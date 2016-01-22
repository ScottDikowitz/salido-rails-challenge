require 'spec_helper'

describe 'Wine' do
  before(:each) do
    @wine = FactoryGirl.create(:wine)
  end

  after(:each) do
    Wine.destroy_all
  end

    it "valid wine gives no errors" do
      expect(@wine).to be_valid
    end

    it "should be invalid without a name" do
      @wine.name = ""
      expect(@wine).to_not be_valid
    end

    it "be valid" do
      expect(@wine).to be_valid
    end

    it "cannot share same api id" do
      wine = FactoryGirl.create(:wine)
      wine.api_id = @wine.api_id
      expect(wine).to_not be_valid
    end

    it "must have unique name" do
      wine = FactoryGirl.create(:wine)
      wine.name = @wine.name
      expect(wine).to_not be_valid
    end

    it "must have an api_id" do
      @wine.api_id = ""
      expect(@wine).to_not be_valid
    end


  end
