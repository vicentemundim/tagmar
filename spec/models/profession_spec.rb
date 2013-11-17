require 'spec_helper'

describe Profession do
  describe ".warrior" do
    it "returns the warrior profession" do
      Profession.warrior.should eq(Profession.find_by(slug: 'warrior'))
    end
  end

  describe ".thief" do
    it "returns the thief profession" do
      Profession.thief.should eq(Profession.find_by(slug: 'thief'))
    end
  end

  describe ".cleric" do
    it "returns the cleric profession" do
      Profession.cleric.should eq(Profession.find_by(slug: 'cleric'))
    end
  end

  describe ".mage" do
    it "returns the mage profession" do
      Profession.mage.should eq(Profession.find_by(slug: 'mage'))
    end
  end

  describe ".ranger" do
    it "returns the ranger profession" do
      Profession.ranger.should eq(Profession.find_by(slug: 'ranger'))
    end
  end

  describe ".bard" do
    it "returns the bard profession" do
      Profession.bard.should eq(Profession.find_by(slug: 'bard'))
    end
  end
end
