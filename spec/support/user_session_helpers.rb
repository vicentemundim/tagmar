module UserSessionHelpers
  def sign_in_with(user)
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password || '12345678'
    click_on t('devise.sessions.new.button')
  end

  def sign_in
    sign_in_with Current.user
  end
end

shared_context "signed in", signed_in: true do
  before { sign_in }
end
