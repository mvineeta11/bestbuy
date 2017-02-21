require_relative 'base_page'

class ReceiverDetails < BasePage
  text_field(:receiver_first_name, name:'first-name')
  text_field(:receiver_last_name, name:'first-name')
  text_field(:address_line1, name:'address-line1')
  text_field(:address_line2, name:'address-line2')
  text_field(:city, name:'address-city')
  select(:state, name:'address-state')
  text_field(:zip, name:'address-zip')
  text_field(:phone_number, name:'phone-number')
  button(:submit_credentials, class:'btn-primary')

  def send_gifts_to(first_name,last_name,address_line1,address_line2,city,state,zip,phone_number)
    self.receiver_first_name = first_name
    self.receiver_last_name = last_name
    self.address_line1 = address_line1
    self.address_line2 = address_line2
    self.city = city
    self.state = state
    self.zip = zip
    self.phone_number = phone_number
    submit_credentials
  end
end