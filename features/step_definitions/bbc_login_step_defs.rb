Given("I am on the sign in page") do
  @bbcsite = BbcSite.new
  @bbcsite.bbc_sign_in_page.visit_sign_in_page
end

When("I input invalid login credentials") do
  @bbcsite.bbc_sign_in_page.input_to_username_field('odaihodihqwoi')
  @bbcsite.bbc_sign_in_page.input_to_password_field('odaihodihqwoi')
end

And("I click login button") do
  @bbcsite.bbc_sign_in_page.click_sign_in_button
  sleep(3)
end

Then("I recieve a valid error") do
  expect(@bbcsite.bbc_sign_in_page.get_error_message_text).to eq @bbcsite.bbc_sign_in_page.get_error_message_text
end



When("I input a valid username") do
  @bbcsite.bbc_sign_in_page.input_to_username_field('test@gmail.com')
end

When("I input an invalid password") do
  @bbcsite.bbc_sign_in_page.input_to_password_field('odaihodihqwoi')
end

When("I click login") do
  @bbcsite.bbc_sign_in_page.click_sign_in_button
  sleep(3)
end

Then("I recieve a valid password error") do
  @bbcsite.bbc_sign_in_page.get_password_error_text
end
