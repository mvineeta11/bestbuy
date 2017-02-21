require_relative 'base_page'

class Login < BasePage

  text_field(:email, id:'fld-e')
  text_field(:password, id:'fld-p1')
  button(:login, class:'cia-form__submit-button')

  def login_with(email,password)
    self.email = email
    self.password = password
    login
  end
end