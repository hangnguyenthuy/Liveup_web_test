When(/^I visit (.*)/) do |page|
  visit(page)
end

When(/^I select (.*) from main menu/) do |menu_name|
  on(HomePage).click_on_menu(menu_name)
end

Then(/^I should see (\w+) in (.*)/) do |element_name, page_name|
  expect(on(page_name).menu_exist?(element_name)).to be true
end

Then(/^I should see (\w+) page/) do |page_name|
  expect(on(page_name).loaded?).to be true
end