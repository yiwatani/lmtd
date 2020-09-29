class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.find_or_create_by!(email: 'guest@sample.com', nickname: 'ゲスト') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end