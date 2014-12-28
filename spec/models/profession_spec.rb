require 'spec_helper'

describe Profession do
  describe ".warrior" do
    it "returns the warrior profession" do
      expect(Profession.warrior).to eq(Profession.find_by(slug: 'warrior'))
    end
  end

  describe ".thief" do
    it "returns the thief profession" do
      expect(Profession.thief).to eq(Profession.find_by(slug: 'thief'))
    end
  end

  describe ".cleric" do
    it "returns the cleric profession" do
      expect(Profession.cleric).to eq(Profession.find_by(slug: 'cleric'))
    end
  end

  describe ".mage" do
    it "returns the mage profession" do
      expect(Profession.mage).to eq(Profession.find_by(slug: 'mage'))
    end
  end

  describe ".ranger" do
    it "returns the ranger profession" do
      expect(Profession.ranger).to eq(Profession.find_by(slug: 'ranger'))
    end
  end

  describe ".bard" do
    it "returns the bard profession" do
      expect(Profession.bard).to eq(Profession.find_by(slug: 'bard'))
    end
  end
end
