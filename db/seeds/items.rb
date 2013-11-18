store = Store.find_or_create_by(name: "DefaultStore")

# Weapons

store.weapons.find_or_initialize_by(name: "Knife").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "light_cutting", minimum_strength: 2, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 1, 9 => -3, 16 => -6 }, range: 20, damage: 8
    )
end

store.weapons.find_or_initialize_by(name: "Dagger").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "light_cutting", minimum_strength: 3, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 1, 9 => -2, 16 => -5 }, range: 20, damage: 12
  )
end

store.weapons.find_or_initialize_by(name: "Staff").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "light_crushing", minimum_strength: 4, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 1, 9 => -1, 16 => -4 }, damage: 12
  )
end

store.weapons.find_or_initialize_by(name: "Club").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "light_crushing", minimum_strength: 5, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 2, 9 => -1, 16 => -5 }, damage: 12
  )
end

store.weapons.find_or_initialize_by(name: "Axe").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "cutting_axes", minimum_strength: 8, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 2, 9 => -1, 16 => -4 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "War Axe").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "cutting_axes", minimum_strength: 11, one_handed_minimum_height: 200, two_handed_minimum_height: 135,
    attack_vs_defense: { 1 => 1, 9 => 3, 16 => 1 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Short Sword").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "cutting_swords", minimum_strength: 5, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 3, 9 => 0, 16 => -4 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Sword").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "cutting_swords", minimum_strength: 8, one_handed_minimum_height: 135, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 3, 9 => 0, 16 => -3 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Cudgel").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "crushing", minimum_strength: 8, one_handed_minimum_height: 135, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 2, 9 => -1, 16 => -5 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Mace").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "crushing", minimum_strength: 9, one_handed_minimum_height: 135, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 0, 9 => 1, 16 => -2 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Warhammer").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "crushing", minimum_strength: 8, one_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 0, 9 => 1, 16 => -1 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Light Spear").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "penetration_spears", minimum_strength: 7, one_handed_minimum_height: 135, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 2, 9 => -1, 16 => -3 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Heavy Spear").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "penetration_spears", minimum_strength: 10, one_handed_minimum_height: 155, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 1, 9 => -1, 16 => -3 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Short Bow").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "penetration_bows", minimum_strength: 6, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 4, 9 => 1, 16 => -2 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Long Bow").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "penetration_bows", minimum_strength: 9, two_handed_minimum_height: 155,
    attack_vs_defense: { 1 => 4, 9 => 1, 16 => -2 }, damage: 16
  )
end

store.weapons.find_or_initialize_by(name: "Bastard Sword").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "deep_cutting", minimum_strength: 13, two_handed_minimum_height: 135,
    attack_vs_defense: { 1 => 0, 9 => 0, 16 => 1 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Two-handed Sword").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "deep_cutting", minimum_strength: 15, two_handed_minimum_height: 135,
    attack_vs_defense: { 1 => 0, 9 => 2, 16 => 5 }, damage: 24
  )
end

store.weapons.find_or_initialize_by(name: "Mace of arms").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "deep_crushing", minimum_strength: 13, one_handed_minimum_height: 135, two_handed_minimum_height: 97,
    attack_vs_defense: { 1 => 1, 9 => 2, 16 => 0 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Flail").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "deep_crushing", minimum_strength: 16, one_handed_minimum_height: 200, two_handed_minimum_height: 155,
    attack_vs_defense: { 1 => -2, 9 => 1, 16 => 4 }, damage: 20
  )
end

store.weapons.find_or_initialize_by(name: "Heavy Lance").tap do |weapon|
  weapon.assign_attributes(
    weapon_group: "deep_crushing", minimum_strength: 15, one_handed_minimum_height: 155,
    attack_vs_defense: { 1 => -1, 9 => 1, 16 => 4 }, damage: 24
  )
end


# Armors

store.armors.find_or_initialize_by(name: "Clothes").tap do |armor|
  armor.assign_attributes(
    absorption: 0,
    defense: {
      2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 1, 7 => 1, 8 => 1, 9 => 1, 10 => 1, 11 => 1, 12 => 1,
      13 => 2, 14 => 2, 15 => 2, 16 => 3, 17 => 3, 18 => 4, 19 => 4, 20 => 5, 21 => 5,
      22 => 6, 23 => 6, 24 => 6, 25 => 7, 26 => 7, 27 => 7, 28 => 8, 29 => 8
    }
  )
end

store.armors.find_or_initialize_by(name: "Light Leather").tap do |armor|
  armor.assign_attributes(
    absorption: 3,
    defense: {
      2 => 2, 3 => 2, 4 => 2, 5 => 2, 6 => 2, 7 => 2, 8 => 2, 9 => 2, 10 => 2, 11 => 2, 12 => 2,
      13 => 3, 14 => 3, 15 => 3, 16 => 4, 17 => 4, 18 => 5, 19 => 5, 20 => 6, 21 => 6,
      22 => 7, 23 => 7, 24 => 7, 25 => 8, 26 => 8, 27 => 8, 28 => 8, 29 => 8
    }
  )
end

store.armors.find_or_initialize_by(name: "Heavy Leather").tap do |armor|
  armor.assign_attributes(
    absorption: 6,
    defense: {
      2 => 9, 3 => 9, 4 => 9, 5 => 9, 6 => 9, 7 => 9, 8 => 9, 9 => 9, 10 => 9, 11 => 9, 12 => 9,
      13 => 10, 14 => 10, 15 => 10, 16 => 11, 17 => 11, 18 => 12, 19 => 12, 20 => 13, 21 => 13,
      22 => 14, 23 => 14, 24 => 14, 25 => 15, 26 => 15, 27 => 15, 28 => 15, 29 => 15
    }
  )
end

store.armors.find_or_initialize_by(name: "Light Chainmail").tap do |armor|
  armor.assign_attributes(
    absorption: 9,
    defense: {
      2 => 10, 3 => 10, 4 => 10, 5 => 10, 6 => 10, 7 => 10, 8 => 10, 9 => 10, 10 => 10, 11 => 10, 12 => 10,
      13 => 11, 14 => 11, 15 => 11, 16 => 12, 17 => 12, 18 => 13, 19 => 13, 20 => 14, 21 => 14,
      22 => 15, 23 => 15, 24 => 15, 25 => 15, 26 => 15, 27 => 15, 28 => 15, 29 => 15
    }
  )
end

store.armors.find_or_initialize_by(name: "Full Chainmail").tap do |armor|
  armor.assign_attributes(
    absorption: 12,
    defense: {
      2 => 16, 3 => 16, 4 => 16, 5 => 16, 6 => 16, 7 => 16, 8 => 16, 9 => 16, 10 => 16, 11 => 16, 12 => 16,
      13 => 17, 14 => 17, 15 => 17, 16 => 18, 17 => 18, 18 => 19, 19 => 19, 20 => 20, 21 => 20,
      22 => 20, 23 => 20, 24 => 20, 25 => 21, 26 => 21, 27 => 21, 28 => 21, 29 => 21
    }
  )
end

store.armors.find_or_initialize_by(name: "Platemail").tap do |armor|
  armor.assign_attributes(
    absorption: 15,
    defense: {
      2 => 17, 3 => 17, 4 => 17, 5 => 17, 6 => 17, 7 => 17, 8 => 17, 9 => 17, 10 => 17, 11 => 17, 12 => 17,
      13 => 18, 14 => 18, 15 => 18, 16 => 19, 17 => 19, 18 => 20, 19 => 20, 20 => 20, 21 => 20,
      22 => 21, 23 => 21, 24 => 21, 25 => 21, 26 => 21, 27 => 21, 28 => 21, 29 => 21
    }
  )
end


# Shields

store.shields.find_or_initialize_by(name: "Small Shield").tap do |shield|
  shield.assign_attributes(
    absorption: 3,
    defense: 1
  )
end

store.shields.find_or_initialize_by(name: "Heavy Shield").tap do |shield|
  shield.assign_attributes(
    absorption: 5,
    defense: 1
  )
end


# Helmets

store.shields.find_or_initialize_by(name: "Light Helmet").tap do |helmet|
  helmet.assign_attributes(absorption: 1)
end

store.shields.find_or_initialize_by(name: "Heavy Helmet").tap do |helmet|
  helmet.assign_attributes(absorption: 2)
end

store.save
