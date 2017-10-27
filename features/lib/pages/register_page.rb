require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  def visit_register_page
    visit('/register')
  end

  def enter_DOB(day, month, year)
    fill_in('Day', with: 'daywd')
    fill_in('Month', with: 'modawnth')
    fill_in('Year', with: 'yedawar')
  end

  def click_next_button
    click_button('Next')
  end

  def fill_in_email(email)
    fill_in('Email', with: 'email')
  end

  def fill_in_password(password)
    fill_in('Password', with: 'password')
  end

  def password_field
    find_field('Password')
  end

  def check_error_message
    find(:xpath, '//*[@id="form-error-password"]').text
  end

  

end
