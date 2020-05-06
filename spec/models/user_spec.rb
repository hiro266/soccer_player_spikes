require 'rails_helper'

RSpec.describe User, type: :model do
  describe '正常にユーザー登録できるか' do
    it 'Twitterからユーザー登録' do
      user = build(:user, :twitter)
      expect(user.valid?).to be true
      expect(user.general?).to be true
    end

    it '管理者権限でユーザー登録' do
      user = build(:user, :admin)
      expect(user.valid?).to be true
      expect(user.admin?).to be true
    end

    it 'ゲストユーザーで登録' do
      user = build(:user, :guest)
      expect(user.valid?).to be true
      expect(user.guest?).to be true
    end
  end

  describe 'バリデーション確認' do
    context 'presence: trueのバリデーション' do
      it 'twitter_idが未入力のuserは登録できない' do
        user = build(:user, :twitter, twitter_id: nil)
        expect(user.valid?).to be false
        expect(user.errors.full_messages).to include("Twitter IDを入力してください")
      end
  
      it '名前が未入力のuserは登録できない' do
        user = build(:user, :twitter, screen_name: nil)
        expect(user.valid?).to be false
        expect(user.errors.full_messages).to include("名前を入力してください")
      end
    end

    context 'uniqueness: trueのバリデーション' do
      it '名前が未入力のuserは登録できない' do
        user = create(:user, :twitter, email: 'test@example')
        user_with_duplicate_email = build(:user, :twitter, email: 'test@example')
        expect(user_with_duplicate_email.valid?).to be false
        expect(user_with_duplicate_email.errors.full_messages).to include("メールアドレスはすでに存在します")
      end
    end

  end
end
