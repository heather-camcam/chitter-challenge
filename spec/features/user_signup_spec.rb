feature "User sign up" do

  scenario 'adds new user to db' do
    visit('/user/new')
      fill_in :email, with: 'heather@test.com'
      fill_in :name, with: 'Heather Campbell'
      fill_in :username, with: 'heather-camcam'
      fill_in :password, with: 'chitter'
    expect{click_button 'Sign up'}.to change(User, :count).by(1)
  end

end
