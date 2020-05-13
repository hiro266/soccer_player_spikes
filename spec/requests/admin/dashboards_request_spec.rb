require 'rails_helper'

RSpec.describe "ステータスコード確認 Admin::Dashboards", type: :request do
  let(:admin_user) { create(:user, :admin) }
  let(:guest_user) { create(:user, :guest) }

  describe "GET /index 管理ダッシュボード" do
    it "管理者は管理画面へのアクセス時にステータス200を返す" do
      get admin_login_path(admin_user)
      get admin_root_path
      expect(response).to have_http_status(200)
    end

    it "ゲストユーザーは管理画面へのアクセス時にステータス404を返す" do
      get login_path(guest_user)
      get admin_root_path
      expect(response).to have_http_status(404)
    end

    # it 'ツイッターユーザーは管理画面へのアクセス時にステータス404を返す' do
    # end
  end

end
