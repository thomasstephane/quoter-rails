require 'spec_helper'

describe 'User' do 

  context 'signing' do
    before { visit root_path }
    
    describe 'with invalid information' do
      it 'should not create a user' do
        expect { click_button 'Signin' }.not_to change(User, :count)
      end
    end

    describe 'with valid information' do
      before do
        fill_in 'name', with: 'Example User'
        fill_in 'password', with: '1234'
      end

      it 'should create a user' do
        expect { click_button 'Signin'}.to change(User, :count).by(1)
      end
    end
  end


  context 'signup' do
    let(:user) { create(:user) }

    describe 'with invalid information' do
      it 'should not login the user' do
        visit new_user_path
        click_button 'Signup'
        expect(page).to have_content('Signup')
      end
    end

    describe 'with valid information' do
      before { visit root_path }
      it "does something cool" do
        fill_in 'username', with: user.username
        fill_in 'password', with: user.password
        click_button 'Login'

        expect(page).to have_content(user.username)
      end
    end 
  end
end