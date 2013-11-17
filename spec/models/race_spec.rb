require 'spec_helper'

describe Race do
  describe ".human" do
    it "returns the human race" do
      Race.human.should eq(Race.find_by(slug: 'human'))
    end
  end

  describe ".halfling" do
    it "returns the halfling race" do
      Race.halfling.should eq(Race.find_by(slug: 'halfling'))
    end
  end

  describe ".dwarf" do
    it "returns the dwarf race" do
      Race.dwarf.should eq(Race.find_by(slug: 'dwarf'))
    end
  end

  describe ".wood_elf" do
    it "returns the wood_elf race" do
      Race.wood_elf.should eq(Race.find_by(slug: 'wood_elf'))
    end
  end

  describe ".golden_elf" do
    it "returns the golden_elf race" do
      Race.golden_elf.should eq(Race.find_by(slug: 'golden_elf'))
    end
  end

  describe ".half_elf" do
    it "returns the half_elf race" do
      Race.half_elf.should eq(Race.find_by(slug: 'half_elf'))
    end
  end
end
