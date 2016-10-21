require 'rails_helper'

feature 'User signing up', js: true do

  scenario 'redirect to sign up page' do
    #point to the right path
    visit root_path
    # Press "sign up" (to redirect to sign up page)
    click_link("Sign Up")


    #Expect to be redirected to the sign up page
    current_path.should == new_user_registration_path

end
#   scenario "User signs up" do
# visit new_user_registration_path
#
#   # Enter description in the text field
#   fill_in 'Email', with: 'jefff@betsy.com'
#   fill_in 'Password', with: '123456'
#
#   page.execute_script("$('action').submit()")
#
#   #Expect to be redirected to the root_path
#   current_path.should == users_sign_up_path
#
#   end
end
