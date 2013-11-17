require 'spec_helper'

describe SocialClass do
  describe ".former_slave" do
    it "returns the former_slave social class" do
      SocialClass.former_slave.should eq(SocialClass.find_by(slug: 'former_slave'))
    end
  end

  describe ".former_servant" do
    it "returns the former_servant social class" do
      SocialClass.former_servant.should eq(SocialClass.find_by(slug: 'former_servant'))
    end
  end

  describe ".free_man" do
    it "returns the free_man social class" do
      SocialClass.free_man.should eq(SocialClass.find_by(slug: 'free_man'))
    end
  end

  describe ".small_trader" do
    it "returns the small_trader social class" do
      SocialClass.small_trader.should eq(SocialClass.find_by(slug: 'small_trader'))
    end
  end

  describe ".craftsman" do
    it "returns the craftsman social class" do
      SocialClass.craftsman.should eq(SocialClass.find_by(slug: 'craftsman'))
    end
  end

  describe ".experienced_trader" do
    it "returns the experienced_trader social class" do
      SocialClass.experienced_trader.should eq(SocialClass.find_by(slug: 'experienced_trader'))
    end
  end

  describe ".low_nobility" do
    it "returns the low_nobility social class" do
      SocialClass.low_nobility.should eq(SocialClass.find_by(slug: 'low_nobility'))
    end
  end

  describe ".high_nobility" do
    it "returns the high_nobility social class" do
      SocialClass.high_nobility.should eq(SocialClass.find_by(slug: 'high_nobility'))
    end
  end
end
