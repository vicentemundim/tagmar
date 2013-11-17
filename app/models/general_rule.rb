class GeneralRule
  include Singleton

  PHYSICAL_ENERGY_WEIGHT_RANGES = {
    17..19   => -2,
    20..24   => -1,
    25..29   =>  0,
    30..35   =>  1,
    36..39   =>  2,
    40..45   =>  3,
    46..49   =>  4,
    50..59   =>  5,
    60..69   =>  6,
    70..79   =>  7,
    80..89   =>  8,
    90..99   =>  9,
    100..109 => 10,
    110..130 => 11,
  }

  NEXT_LEVEL = {
     1 =>  11,
     2 =>  21,
     3 =>  31,
     4 =>  46,
     5 =>  61,
     6 =>  76,
     7 =>  96,
     8 => 116,
     9 => 136,
    10 => 166,
    11 => 196,
    12 => 226,
    13 => 266,
    14 => 306,
    15 => 356,
    16 => 406,
    17 => 466,
    18 => 526,
    19 => 596,
    20 => 666,
  }

  def attribute_modifiers
    @attribute_modifiers ||= {
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
    }
  end

  def physical_energy_for(weight, strength_plus_constitution)
    physical_energy_by_weight[weight] + physical_energy_by_strength_plus_constitution[strength_plus_constitution]
  end

  def experience_to_level_up_for(level)
    NEXT_LEVEL[level]
  end

  def weapon_group_costs
    @weapon_group_costs ||= {
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
    }
  end

  private

  def physical_energy_by_weight
    @physical_energy_by_weight ||= PHYSICAL_ENERGY_WEIGHT_RANGES.inject({}) do |result, (range, initial)|
      range.to_a.each do |weight|
        result[weight] = initial
      end

      result
    end
  end

  def physical_energy_by_strength_plus_constitution
    @physical_energy_by_strength_plus_constitution ||= strength_plus_constitution_ranges.each_with_index.inject({}) do |result, (range, initial)|
      range.each do |strength_plus_constitution|
        result[strength_plus_constitution] = initial
      end

      result
    end
  end

  def strength_plus_constitution_ranges
    @strength_plus_constitution_ranges ||= (3..44).to_a.in_groups_of(3)
  end
end
