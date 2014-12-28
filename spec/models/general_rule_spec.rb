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
          expect(general_rule.physical_energy_for(weight, 4)).to eq(-2)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(-2)
        end
      end

      it "returns -1 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(-1)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(-1)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(-1)
        end
      end

      it "returns 0 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(0)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(0)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(0)
        end
      end

      it "returns 1 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(1)
        end
      end

      it "returns 7 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(7)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(7)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(7)
        end
      end

      it "returns 11 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(11)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(11)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(11)
        end
      end
    end

    describe "for weight 20..24" do
      let(:weight_range) { 20..24 }

      it "returns -1 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(-1)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(-1)
        end
      end

      it "returns 0 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(0)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(0)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(0)
        end
      end

      it "returns 1 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(1)
        end
      end

      it "returns 2 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(2)
        end
      end

      it "returns 8 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(8)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(8)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(8)
        end
      end

      it "returns 12 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(12)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(12)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(12)
        end
      end
    end

    describe "for weight 25..29" do
      let(:weight_range) { 25..29 }

      it "returns 0 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(0)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(0)
        end
      end

      it "returns 1 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(1)
        end
      end

      it "returns 2 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(2)
        end
      end

      it "returns 3 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(3)
        end
      end

      it "returns 9 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(9)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(9)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(9)
        end
      end

      it "returns 13 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(13)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(13)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(13)
        end
      end
    end

    describe "for weight 30..35" do
      let(:weight_range) { 30..35 }

      it "returns 1 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(1)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(1)
        end
      end

      it "returns 2 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(2)
        end
      end

      it "returns 3 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(3)
        end
      end

      it "returns 4 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(4)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(4)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(4)
        end
      end

      it "returns 10 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(10)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(10)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(10)
        end
      end

      it "returns 14 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(14)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(14)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(14)
        end
      end
    end

    describe "for weight 36..39" do
      let(:weight_range) { 36..39 }

      it "returns 2 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(2)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(2)
        end
      end

      it "returns 3 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(3)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(3)
        end
      end

      it "returns 4 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(4)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(4)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(4)
        end
      end

      it "returns 5 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(5)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(5)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(5)
        end
      end

      it "returns 11 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(11)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(11)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(11)
        end
      end

      it "returns 15 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(15)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(15)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(15)
        end
      end
    end

    describe "for weight 60..69" do
      let(:weight_range) { 60..69 }

      it "returns 6 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(6)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(6)
        end
      end

      it "returns 7 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(7)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(7)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(7)
        end
      end

      it "returns 8 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(8)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(8)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(8)
        end
      end

      it "returns 9 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(9)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(9)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(9)
        end
      end

      it "returns 15 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(15)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(15)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(15)
        end
      end

      it "returns 19 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(19)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(19)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(19)
        end
      end
    end

    describe "for weight 110..130" do
      let(:weight_range) { 110..130 }

      it "returns 11 for strength plus constitution 4 to 5" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 4)).to eq(11)
          expect(general_rule.physical_energy_for(weight, 5)).to eq(11)
        end
      end

      it "returns 12 for strength plus constitution 6 to 8" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 6)).to eq(12)
          expect(general_rule.physical_energy_for(weight, 7)).to eq(12)
          expect(general_rule.physical_energy_for(weight, 8)).to eq(12)
        end
      end

      it "returns 13 for strength plus constitution 9 to 11" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight,  9)).to eq(13)
          expect(general_rule.physical_energy_for(weight, 10)).to eq(13)
          expect(general_rule.physical_energy_for(weight, 11)).to eq(13)
        end
      end

      it "returns 14 for strength plus constitution 12 to 14" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 12)).to eq(14)
          expect(general_rule.physical_energy_for(weight, 13)).to eq(14)
          expect(general_rule.physical_energy_for(weight, 14)).to eq(14)
        end
      end

      it "returns 20 for strength plus constitution 30 to 32" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 30)).to eq(20)
          expect(general_rule.physical_energy_for(weight, 31)).to eq(20)
          expect(general_rule.physical_energy_for(weight, 32)).to eq(20)
        end
      end

      it "returns 24 for strength plus constitution 42 to 44" do
        weight_range.each do |weight|
          expect(general_rule.physical_energy_for(weight, 42)).to eq(24)
          expect(general_rule.physical_energy_for(weight, 43)).to eq(24)
          expect(general_rule.physical_energy_for(weight, 44)).to eq(24)
        end
      end
    end
  end

  describe "#experience_to_level_up_for(level)" do
    it "returns 11 for level 1" do
      expect(general_rule.experience_to_level_up_for(1)).to eq(11)
    end

    it "returns 21 for level 2" do
      expect(general_rule.experience_to_level_up_for(2)).to eq(21)
    end

    it "returns 31 for level 3" do
      expect(general_rule.experience_to_level_up_for(3)).to eq(31)
    end

    it "returns 46 for level 4" do
      expect(general_rule.experience_to_level_up_for(4)).to eq(46)
    end

    it "returns 61 for level 5" do
      expect(general_rule.experience_to_level_up_for(5)).to eq(61)
    end

    it "returns 76 for level 6" do
      expect(general_rule.experience_to_level_up_for(6)).to eq(76)
    end

    it "returns 96 for level 7" do
      expect(general_rule.experience_to_level_up_for(7)).to eq(96)
    end

    it "returns 116 for level 8" do
      expect(general_rule.experience_to_level_up_for(8)).to eq(116)
    end

    it "returns 136 for level 9" do
      expect(general_rule.experience_to_level_up_for(9)).to eq(136)
    end

    it "returns 166 for level 10" do
      expect(general_rule.experience_to_level_up_for(10)).to eq(166)
    end

    it "returns 196 for level 11" do
      expect(general_rule.experience_to_level_up_for(11)).to eq(196)
    end

    it "returns 226 for level 12" do
      expect(general_rule.experience_to_level_up_for(12)).to eq(226)
    end

    it "returns 266 for level 13" do
      expect(general_rule.experience_to_level_up_for(13)).to eq(266)
    end

    it "returns 306 for level 14" do
      expect(general_rule.experience_to_level_up_for(14)).to eq(306)
    end

    it "returns 356 for level 15" do
      expect(general_rule.experience_to_level_up_for(15)).to eq(356)
    end

    it "returns 406 for level 16" do
      expect(general_rule.experience_to_level_up_for(16)).to eq(406)
    end

    it "returns 466 for level 17" do
      expect(general_rule.experience_to_level_up_for(17)).to eq(466)
    end

    it "returns 526 for level 18" do
      expect(general_rule.experience_to_level_up_for(18)).to eq(526)
    end

    it "returns 596 for level 19" do
      expect(general_rule.experience_to_level_up_for(19)).to eq(596)
    end

    it "returns 666 for level 20" do
      expect(general_rule.experience_to_level_up_for(20)).to eq(666)
    end
  end
end
