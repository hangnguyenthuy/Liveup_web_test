class LoginPage
  include PageObject
  include MainMenu


  div(:login_by_email, class:"mod-login-col1")
  text_field(:email) {login_by_email_element.text_field_elements[0]}
  text_field(:password) {login_by_email_element.text_field_elements[1]}
  button(:login, class:"next-btn")
  span(:login_slider, class: "btn_slide")
  unordered_list(:account_list, class: 'account-list')


  page_url(RUN_CONFIG['login']['url'])


  def loaded?
    login?
  end

  def login(data)
    email_element.set(data[:email])
    password_element.set(data[:password])
    login_element.click
    wait_until !login_element.exist?
    # login_slider_element.drag_and_drop_by(login_slider_element.location.x, login_slider_element.location.x + 500 )
  end

  def login_successful?
    account_list?
  end

  def post_form_to_json(url, params)
    res = Net::HTTP.post_form(URI(url), params)
    JSON.parse(res.body)
  end

end