When(/^I login with (.*)$/) do |test_type_account|
  on(LoginPage).login(TEST_ACCOUNTS[test_type_account.to_sym])
end

Then(/^I should be logged in$/) do
  expect(on(LoginPage).login_successful?).to be true
end