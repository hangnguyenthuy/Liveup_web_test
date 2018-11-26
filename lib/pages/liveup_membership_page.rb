class LiveupMembershipPage
  include PageObject

  page_url(RUN_CONFIG['liveup_membership_url'])
  div(:breadcrum, class:'breadcrumb')

  def loaded?
    breadcrum_element.text.include? "LiveUp Membership"
  end
end