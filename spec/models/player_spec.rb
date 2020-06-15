require 'rails_helper'

RSpec.describe "Model#{Player}", type: :model do
  describe '登録チェック' do
    it '正常に登録ができる' do
      player = build(:player)
      expect(player.valid?).to be true
    end
  end
  describe 'バリデーションチェック' do
    context 'presence: trueチェック' do
      it 'nameが未入力のplayerは登録できない' do
        player = build(:player, name: nil)
        expect(player.valid?).to be false
        expect(player.errors[:name]).to include("を入力してください")
      end
    end
  end
end
