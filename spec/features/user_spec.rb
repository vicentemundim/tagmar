require "spec_helper"

feature "Sign up and sign in" do
  let(:user_attributes) { attributes_for(:user) }

  scenario "fills sign up form and sign in" do
    visit root_path

    click_on t('buttons.sign_up')

    fill_in tmid('user.name'), with: user_attributes[:name]
    fill_in tmid('user.email'), with: user_attributes[:email]
    fill_in tmid('user.password'), with: user_attributes[:password]
    fill_in tmid('user.password_confirmation'), with: user_attributes[:password_confirmation]

    click_on t('devise.registrations.new.button')

    expect(page).to have_no_link(t('buttons.sign_up'))
    expect(page).to have_no_link(t('buttons.sign_in'))
    expect(page).to have_link(t('buttons.sign_out'))
  end
end
