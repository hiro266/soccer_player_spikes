require 'rails_helper'

RSpec.describe Spike, type: :model do
  describe '登録チェック' do
    it '正常に登録ができる' do
      spike = build(:spike)
      expect(spike.valid?).to be true
    end
  end
  describe 'バリデーション確認' do
    context 'presence: trueのバリデーション' do
      it 'makerが未入力のspikeは登録できない' do
        spike = build(:spike, maker: nil)
        expect(spike.valid?).to be false
        expect(spike.errors[:maker]).to include("を入力してください")
      end
      it 'nameが未入力のspikeは登録できない' do
        spike = build(:spike, name: nil)
        expect(spike.valid?).to be false
        expect(spike.errors[:name]).to include("を入力してください")
      end
      it 'priceが未入力のspikeは登録できない' do
        spike = build(:spike, price: nil)
        expect(spike.valid?).to be false
        expect(spike.errors[:price]).to include("を入力してください")
      end
      it 'characteristicが未入力のspikeは登録できない' do
        spike = build(:spike, characteristic: nil)
        expect(spike.valid?).to be false
        expect(spike.errors[:characteristic]).to include("を入力してください")
      end
      it 'imagesが未入力のspikeは登録できない' do
        spike = build(:spike, images: nil)
        expect(spike.valid?).to be false
        expect(spike.errors[:images]).to include("を入力してください")
      end
    end
  end
  describe 'メソッドチェック' do
    context 'tax_included' do
      fit '数字に10%乗っかって返ってくること' do
        spike = build(:spike)
        expect(spike.tax_included).to eq (spike.price * 1.1).round
      end
    end
  end
end
