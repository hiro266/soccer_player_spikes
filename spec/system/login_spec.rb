require 'rails_helper'

RSpec.describe 'SystemLogin', type: :system do
  let(:guest_user) { create(:user, :guest) }
  before { login(guest_user) }
  describe 'ログインページ' do
    it 'ログインボタンが存在すること' do
      visit login_path
      expect(page).to have_content('ゲストログイン'), '「ゲストログイン」というテキストを持ったボタンが存在しません'
      expect(page).to have_content('ログイン'), '「ログイン」というテキストを持ったボタンが存在しません'
    end

    it 'ゲストログインできること' do
      expect(current_path).to eq root_path
      expect(page).to have_content('ゲストユーザーでログインしました'), '「ゲストユーザーでログインしました」というメッセージが存在しません'
    end

    # it 'ツイッターログインできること' do
    # end
  end
end