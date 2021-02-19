require 'rails_helper'

RSpec.describe Place, type: :model do
  before do
    @place = FactoryBot.build(:place)
  end

  describe '商品出品機能' do
    
    it "全ての条件を満たしていれば商品はは出品できる" do
      expect(@place).to be_valid
    end

    it "imageが無いと登録できない" do
      @place.image = nil
      @place.valid?
      expect(@place.errors.full_messages).to include("Image can't be blank")
    end

    it "nameが空だと登録できない" do
      @place.name = ""
      @place.valid?
      expect(@place.errors.full_messages).to include("Name can't be blank")
    end

    it "infoが空だと登録できない" do
      @place.info = ""
      @place.valid?
      expect(@place.errors.full_messages).to include("Info can't be blank")
    end

    it "category_idが空だと登録できない" do
      @place.category_id = ""
      @place.valid?
      expect(@place.errors.full_messages).to include("Category Select")
    end

    it "category_idを選択しないと登録できない" do
      @place.category_id = 1
      @place.valid?
      expect(@place.errors.full_messages).to include("Category Select")
    end
    
    it "country_idが空だと登録できない" do
      @place.country_id = ""
      @place.valid?
      expect(@place.errors.full_messages).to include("Country Select")
    end

    it "country_idを選択しないと登録できない" do
      @place.country_id = 1
      @place.valid?
      expect(@place.errors.full_messages).to include("Country Select")
    end

  end
end