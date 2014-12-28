require 'spec_helper'

describe Race do
  describe ".human" do
    it "returns the human race" do
      expect(Race.human).to eq(Race.find_by(slug: 'human'))
    end
  end

  describe ".halfling" do
    it "returns the halfling race" do
      expect(Race.halfling).to eq(Race.find_by(slug: 'halfling'))
    end
  end

  describe ".dwarf" do
    it "returns the dwarf race" do
      expect(Race.dwarf).to eq(Race.find_by(slug: 'dwarf'))
    end
  end

  describe ".wood_elf" do
    it "returns the wood_elf race" do
      expect(Race.wood_elf).to eq(Race.find_by(slug: 'wood_elf'))
    end
  end

  describe ".golden_elf" do
    it "returns the golden_elf race" do
      expect(Race.golden_elf).to eq(Race.find_by(slug: 'golden_elf'))
    end
  end

  describe ".half_elf" do
    it "returns the half_elf race" do
      expect(Race.half_elf).to eq(Race.find_by(slug: 'half_elf'))
    end
  end
end
