require 'rails_helper'

RSpec.describe 'SystemAdmin', type: :system do
  let(:twitter_user) { create(:user, :twitter)}
  let(:admin_user) { create(:user, :admin) }
  let(:guest_user) { create(:user, :guest) }
  describe '/adminへアクセス' do
    context 'ログイン前' do
      it '404エラーページへ遷移' do
          visit admin_root_path
          expect(page).to have_content('ページが見つかりません')
      end
    end

    context 'ログイン後' do
      it 'ゲストユーザーだと404エラーページへ遷移' do
        login(guest_user)
        visit admin_root_path
        expect(page).to have_content('ページが見つかりません')
      end

      # it 'ツイッターユーザーだと404エラーページへ遷移' do
      # end

      # it '管理ユーザーだとアクセス可能' do
      # end
    end
  end
end