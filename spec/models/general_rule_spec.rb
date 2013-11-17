require "spec_helper"

describe GeneralRule do
  subject(:general_rule) { GeneralRule.instance }

  its(:attribute_modifiers) do
    should eq({
       0 => -7,
       1 => -7,
       2 => -7,
       3 => -7,
       4 => -5,
       5 => -3,
       6 => -3,
       7 => -1,
       8 => -1,
       9 =>  0,
      10 =>  0,
      11 =>  0,
      12 =>  0,
      13 =>  1,
      14 =>  1,
      15 =>  1,
      16 =>  2,
      17 =>  2,
      18 =>  3,
      19 =>  3,
      20 =>  4,
      21 =>  5,
      22 =>  6,
    })
  end

  its(:weapon_group_costs) do
    should eq({
      'light_cutting'      => 1,
      'light_crushing'     => 1,
      'cutting_axes'       => 2,
      'cutting_swords'     => 2,
      'crushing'           => 2,
      'penetration_spears' => 2,
      'penetration_bows'   => 2,
      'deep_cutting'       => 3,
      'deep_crushing'      => 3,
      'deep_penetration'   => 3,
    })
  end

  describe "#physical_energy_for(weight, strength + constitution)" do
    describe "for weight 17..19" do
      let(:weight_range) { 17..19 }

      it "returns -2 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(-2)
          general_rule.physical_energy_for(weight, 5).should eq(-2)
        end
      end

      it "returns -1 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(-1)
          general_rule.physical_energy_for(weight, 7).should eq(-1)
          general_rule.physical_energy_for(weight, 8).should eq(-1)
        end
      end

      it "returns 0 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(0)
          general_rule.physical_energy_for(weight, 10).should eq(0)
          general_rule.physical_energy_for(weight, 11).should eq(0)
        end
      end

      it "returns 1 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(1)
          general_rule.physical_energy_for(weight, 13).should eq(1)
          general_rule.physical_energy_for(weight, 14).should eq(1)
        end
      end

      it "returns 7 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(7)
          general_rule.physical_energy_for(weight, 31).should eq(7)
          general_rule.physical_energy_for(weight, 32).should eq(7)
        end
      end

      it "returns 11 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(11)
          general_rule.physical_energy_for(weight, 43).should eq(11)
          general_rule.physical_energy_for(weight, 44).should eq(11)
        end
      end
    end

    describe "for weight 20..24" do
      let(:weight_range) { 20..24 }

      it "returns -1 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(-1)
          general_rule.physical_energy_for(weight, 5).should eq(-1)
        end
      end

      it "returns 0 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(0)
          general_rule.physical_energy_for(weight, 7).should eq(0)
          general_rule.physical_energy_for(weight, 8).should eq(0)
        end
      end

      it "returns 1 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(1)
          general_rule.physical_energy_for(weight, 10).should eq(1)
          general_rule.physical_energy_for(weight, 11).should eq(1)
        end
      end

      it "returns 2 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(2)
          general_rule.physical_energy_for(weight, 13).should eq(2)
          general_rule.physical_energy_for(weight, 14).should eq(2)
        end
      end

      it "returns 8 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(8)
          general_rule.physical_energy_for(weight, 31).should eq(8)
          general_rule.physical_energy_for(weight, 32).should eq(8)
        end
      end

      it "returns 12 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(12)
          general_rule.physical_energy_for(weight, 43).should eq(12)
          general_rule.physical_energy_for(weight, 44).should eq(12)
        end
      end
    end

    describe "for weight 25..29" do
      let(:weight_range) { 25..29 }

      it "returns 0 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(0)
          general_rule.physical_energy_for(weight, 5).should eq(0)
        end
      end

      it "returns 1 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(1)
          general_rule.physical_energy_for(weight, 7).should eq(1)
          general_rule.physical_energy_for(weight, 8).should eq(1)
        end
      end

      it "returns 2 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(2)
          general_rule.physical_energy_for(weight, 10).should eq(2)
          general_rule.physical_energy_for(weight, 11).should eq(2)
        end
      end

      it "returns 3 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(3)
          general_rule.physical_energy_for(weight, 13).should eq(3)
          general_rule.physical_energy_for(weight, 14).should eq(3)
        end
      end

      it "returns 9 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(9)
          general_rule.physical_energy_for(weight, 31).should eq(9)
          general_rule.physical_energy_for(weight, 32).should eq(9)
        end
      end

      it "returns 13 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(13)
          general_rule.physical_energy_for(weight, 43).should eq(13)
          general_rule.physical_energy_for(weight, 44).should eq(13)
        end
      end
    end

    describe "for weight 30..35" do
      let(:weight_range) { 30..35 }

      it "returns 1 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(1)
          general_rule.physical_energy_for(weight, 5).should eq(1)
        end
      end

      it "returns 2 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(2)
          general_rule.physical_energy_for(weight, 7).should eq(2)
          general_rule.physical_energy_for(weight, 8).should eq(2)
        end
      end

      it "returns 3 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(3)
          general_rule.physical_energy_for(weight, 10).should eq(3)
          general_rule.physical_energy_for(weight, 11).should eq(3)
        end
      end

      it "returns 4 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(4)
          general_rule.physical_energy_for(weight, 13).should eq(4)
          general_rule.physical_energy_for(weight, 14).should eq(4)
        end
      end

      it "returns 10 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(10)
          general_rule.physical_energy_for(weight, 31).should eq(10)
          general_rule.physical_energy_for(weight, 32).should eq(10)
        end
      end

      it "returns 14 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(14)
          general_rule.physical_energy_for(weight, 43).should eq(14)
          general_rule.physical_energy_for(weight, 44).should eq(14)
        end
      end
    end

    describe "for weight 36..39" do
      let(:weight_range) { 36..39 }

      it "returns 2 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(2)
          general_rule.physical_energy_for(weight, 5).should eq(2)
        end
      end

      it "returns 3 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(3)
          general_rule.physical_energy_for(weight, 7).should eq(3)
          general_rule.physical_energy_for(weight, 8).should eq(3)
        end
      end

      it "returns 4 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(4)
          general_rule.physical_energy_for(weight, 10).should eq(4)
          general_rule.physical_energy_for(weight, 11).should eq(4)
        end
      end

      it "returns 5 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(5)
          general_rule.physical_energy_for(weight, 13).should eq(5)
          general_rule.physical_energy_for(weight, 14).should eq(5)
        end
      end

      it "returns 11 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(11)
          general_rule.physical_energy_for(weight, 31).should eq(11)
          general_rule.physical_energy_for(weight, 32).should eq(11)
        end
      end

      it "returns 15 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(15)
          general_rule.physical_energy_for(weight, 43).should eq(15)
          general_rule.physical_energy_for(weight, 44).should eq(15)
        end
      end
    end

    describe "for weight 60..69" do
      let(:weight_range) { 60..69 }

      it "returns 6 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(6)
          general_rule.physical_energy_for(weight, 5).should eq(6)
        end
      end

      it "returns 7 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(7)
          general_rule.physical_energy_for(weight, 7).should eq(7)
          general_rule.physical_energy_for(weight, 8).should eq(7)
        end
      end

      it "returns 8 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(8)
          general_rule.physical_energy_for(weight, 10).should eq(8)
          general_rule.physical_energy_for(weight, 11).should eq(8)
        end
      end

      it "returns 9 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(9)
          general_rule.physical_energy_for(weight, 13).should eq(9)
          general_rule.physical_energy_for(weight, 14).should eq(9)
        end
      end

      it "returns 15 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(15)
          general_rule.physical_energy_for(weight, 31).should eq(15)
          general_rule.physical_energy_for(weight, 32).should eq(15)
        end
      end

      it "returns 19 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(19)
          general_rule.physical_energy_for(weight, 43).should eq(19)
          general_rule.physical_energy_for(weight, 44).should eq(19)
        end
      end
    end

    describe "for weight 110..130" do
      let(:weight_range) { 110..130 }

      it "returns 11 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 4).should eq(11)
          general_rule.physical_energy_for(weight, 5).should eq(11)
        end
      end

      it "returns 12 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 6).should eq(12)
          general_rule.physical_energy_for(weight, 7).should eq(12)
          general_rule.physical_energy_for(weight, 8).should eq(12)
        end
      end

      it "returns 13 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight,  9).should eq(13)
          general_rule.physical_energy_for(weight, 10).should eq(13)
          general_rule.physical_energy_for(weight, 11).should eq(13)
        end
      end

      it "returns 14 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 12).should eq(14)
          general_rule.physical_energy_for(weight, 13).should eq(14)
          general_rule.physical_energy_for(weight, 14).should eq(14)
        end
      end

      it "returns 20 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 30).should eq(20)
          general_rule.physical_energy_for(weight, 31).should eq(20)
          general_rule.physical_energy_for(weight, 32).should eq(20)
        end
      end

      it "returns 24 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          general_rule.physical_energy_for(weight, 42).should eq(24)
          general_rule.physical_energy_for(weight, 43).should eq(24)
          general_rule.physical_energy_for(weight, 44).should eq(24)
        end
      end
    end
  end

  describe "#experience_to_level_up_for(level)" do
    it "returns 11 for level 1" do
      general_rule.experience_to_level_up_for(1).should eq(11)
    end

    it "returns 21 for level 2" do
      general_rule.experience_to_level_up_for(2).should eq(21)
    end

    it "returns 31 for level 3" do
      general_rule.experience_to_level_up_for(3).should eq(31)
    end

    it "returns 46 for level 4" do
      general_rule.experience_to_level_up_for(4).should eq(46)
    end

    it "returns 61 for level 5" do
      general_rule.experience_to_level_up_for(5).should eq(61)
    end

    it "returns 76 for level 6" do
      general_rule.experience_to_level_up_for(6).should eq(76)
    end

    it "returns 96 for level 7" do
      general_rule.experience_to_level_up_for(7).should eq(96)
    end

    it "returns 116 for level 8" do
      general_rule.experience_to_level_up_for(8).should eq(116)
    end

    it "returns 136 for level 9" do
      general_rule.experience_to_level_up_for(9).should eq(136)
    end

    it "returns 166 for level 10" do
      general_rule.experience_to_level_up_for(10).should eq(166)
    end

    it "returns 196 for level 11" do
      general_rule.experience_to_level_up_for(11).should eq(196)
    end

    it "returns 226 for level 12" do
      general_rule.experience_to_level_up_for(12).should eq(226)
    end

    it "returns 266 for level 13" do
      general_rule.experience_to_level_up_for(13).should eq(266)
    end

    it "returns 306 for level 14" do
      general_rule.experience_to_level_up_for(14).should eq(306)
    end

    it "returns 356 for level 15" do
      general_rule.experience_to_level_up_for(15).should eq(356)
    end

    it "returns 406 for level 16" do
      general_rule.experience_to_level_up_for(16).should eq(406)
    end

    it "returns 466 for level 17" do
      general_rule.experience_to_level_up_for(17).should eq(466)
    end

    it "returns 526 for level 18" do
      general_rule.experience_to_level_up_for(18).should eq(526)
    end

    it "returns 596 for level 19" do
      general_rule.experience_to_level_up_for(19).should eq(596)
    end

    it "returns 666 for level 20" do
      general_rule.experience_to_level_up_for(20).should eq(666)
    end
  end
end
