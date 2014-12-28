require 'spec_helper'

describe SocialClass do
  describe ".former_slave" do
    it "returns the former_slave social class" do
      expect(SocialClass.former_slave).to eq(SocialClass.find_by(slug: 'former_slave'))
    end
  end

  describe ".former_servant" do
    it "returns the former_servant social class" do
      expect(SocialClass.former_servant).to eq(SocialClass.find_by(slug: 'former_servant'))
    end
  end

  describe ".free_man" do
    it "returns the free_man social class" do
      expect(SocialClass.free_man).to eq(SocialClass.find_by(slug: 'free_man'))
    end
  end

  describe ".small_trader" do
    it "returns the small_trader social class" do
      expect(SocialClass.small_trader).to eq(SocialClass.find_by(slug: 'small_trader'))
    end
  end

  describe ".craftsman" do
    it "returns the craftsman social class" do
      expect(SocialClass.craftsman).to eq(SocialClass.find_by(slug: 'craftsman'))
    end
  end

  describe ".experienced_trader" do
    it "returns the experienced_trader social class" do
      expect(SocialClass.experienced_trader).to eq(SocialClass.find_by(slug: 'experienced_trader'))
    end
  end

  describe ".low_nobility" do
    it "returns the low_nobility social class" do
      expect(SocialClass.low_nobility).to eq(SocialClass.find_by(slug: 'low_nobility'))
    end
  end

  describe ".high_nobility" do
    it "returns the high_nobility social class" do
      expect(SocialClass.high_nobility).to eq(SocialClass.find_by(slug: 'high_nobility'))
    end
  end
end
