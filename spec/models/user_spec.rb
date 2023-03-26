require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it 'nicnameが空では登録できない' do
      user = User.new(nickname: '', email: 'test@example', password: '123456', password_confirmation: '123456')
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it 'emailが空では登録できない' do
      user = User.new(nickname: 'Mike', email: '', password: '123456', password_confirmation: '123456')
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
  end
end
