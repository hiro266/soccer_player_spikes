require 'rails_helper'

RSpec.describe 'Login', type: :system do
  let(:guest_user) { create(:user, :guest) }
  before { login(guest_user) }
  describe 'ログインページ' do
    it 'ログインボタンが存在すること' do
      visit login_path
      expect(page).to have_content('ゲストログイン'), '「ゲストログイン」というテキストを持ったボタンが存在しません'
      expect(page).to have_content('ツイッターログイン'), '「ツイッターログイン」というテキストを持ったボタンが存在しません'
    end

    it 'ゲストログインできること' do
      expect(current_path).to eq root_path
      expect(page).to have_content('ゲストユーザーでログインしました'), '「ゲストユーザーでログインしました」というメッセージが存在しません'
    end
  end
end