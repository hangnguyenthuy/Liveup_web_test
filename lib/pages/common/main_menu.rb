module MainMenu
  include PageObject

  div(:menu_wrap, id: "topActionLinks")
  div(:save_more_on_app, id: "topActionDownload")
  div(:sell_on_lazada, id: "topActionSell")
  div(:customer_care, id: "topActionCustomCare")
  div(:track_my_order, id: 'topActionTrack')
  div(:login, id: "anonLogin")
  div(:singup, id: "anonSignup")

  def loaded?
    menu_wrap?
  end

  def click_on_menu(menu)
    wait_until {loaded?}
    send("#{menu}_element").click
  end

end