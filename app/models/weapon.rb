class Weapon < Item
  field :weapon_group, type: String

  field :minimum_strength, type: Integer
  field :one_handed_minimum_height, type: Integer
  field :two_handed_minimum_height, type: Integer

  field :attack_vs_defense, type: Hash
  field :range, type: Integer, default: 2
  field :damage, type: Integer
end
