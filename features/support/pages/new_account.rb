require_relative 'base_page'

class NewAccount < BasePage

  text_field(:first_name, id:'fld-firstName')
  text_field(:last_name, id:'fld-lastName')
  text_field(:email_id, id:'fld-e')
  text_field(:password, id:'fld-p1')
  text_field(:confirm_password, id:'fld-p2')
  text_field(:phone_number, id:'fld-phone')
  #checkbox(:account_recovery, class:'js-recovery-phone')
  span(:submit_details_for_account_creation, text:'Create an Account')
  link(:skip_recovery_phone,class:'cia-manage-recovery-phone__cancel-link js-skip')

  def create_new_account(first_name,last_name,email_id,password,conf_password,phone)
    self.first_name = first_name
    self.last_name = last_name
    self.email_id = email_id
    self.password = password
    self.confirm_password = conf_password
    self.phone_number = phone
   # account_recovery_element.click
    submit_details_for_account_creation_element.click
  end
end