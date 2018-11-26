class MyAccountPage
  include PageObject

  list_item(:liveup_membership_item, id: "LiveUp-Membership")
  page_url(RUN_CONFIG['liveup_membership_url'])


  def loaded?

  end

  def menu_exist?(menu_name)
    send("#{menu_name}?")
  end
end