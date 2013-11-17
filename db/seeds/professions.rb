Profession.find_or_initialize_by(slug: "warrior").tap do |profession|
  profession.update_attributes(
    name: "Warrior",
    skill_points: 12,
    combat_points: 7,
    can_use_magic: false,
     heroic_energy: {
      initial:  { 1 => 15, 2 => 16, 3 => 16, 4 => 17, 5 => 17, 6 => 18, 7 => 18, 8 => 19, 9 => 19, 10 => 20 },
      on_level: { 1 => 5, 2 => 6, 3 => 6, 4 => 7, 5 => 7, 6 => 8, 7 => 8, 8 => 9, 9 => 9, 10 => 10 },
    }
  )
end

Profession.find_or_initialize_by(slug: "thief").tap do |profession|
  profession.update_attributes(
    name: "Thief",
    skill_points: 16,
    combat_points: 3,
    can_use_magic: false,
     heroic_energy: {
      initial:  { 1 => 9, 2 => 10, 3 => 10, 4 => 11, 5 => 11, 6 => 12, 7 => 12, 8 => 13, 9 => 13, 10 => 14 },
      on_level: { 1 => 3, 2 => 4, 3 => 4, 4 => 5, 5 => 5, 6 => 6, 7 => 6, 8 => 7, 9 => 7, 10 => 8 },
    }
  )
end

Profession.find_or_initialize_by(slug: "cleric").tap do |profession|
  profession.update_attributes(
    name: "Cleric",
    skill_points: 12,
    combat_points: 3,
    can_use_magic: true,
    heroic_energy: {
      initial:  { 1 => 9, 2 => 10, 3 => 10, 4 => 11, 5 => 11, 6 => 12, 7 => 12, 8 => 13, 9 => 13, 10 => 14 },
      on_level: { 1 => 3, 2 => 4, 3 => 4, 4 => 5, 5 => 5, 6 => 6, 7 => 6, 8 => 7, 9 => 7, 10 => 8 },
    }
  )
end

Profession.find_or_initialize_by(slug: "mage").tap do |profession|
  profession.update_attributes(
    name: "Mage",
    skill_points: 11,
    combat_points: 1,
    can_use_magic: true,
    heroic_energy: {
      initial:  { 1 => 3, 2 => 4, 3 => 4, 4 => 5, 5 => 5, 6 => 6, 7 => 6, 8 => 7, 9 => 7, 10 => 8 },
      on_level: { 1 => 1, 2 => 2, 3 => 2, 4 => 3, 5 => 3, 6 => 4, 7 => 4, 8 => 5, 9 => 5, 10 => 6 },
    }
  )
end

Profession.find_or_initialize_by(slug: "ranger").tap do |profession|
  profession.update_attributes(
    name: "Ranger",
    skill_points: 12,
    combat_points: 5,
    can_use_magic: true,
    heroic_energy: {
      initial:  { 1 => 12, 2 => 13, 3 => 13, 4 => 14, 5 => 14, 6 => 15, 7 => 15, 8 => 16, 9 => 16, 10 => 17 },
      on_level: { 1 => 4, 2 => 5, 3 => 5, 4 => 6, 5 => 6, 6 => 7, 7 => 7, 8 => 8, 9 => 8, 10 => 9 },
    }
  )
end

Profession.find_or_initialize_by(slug: "bard").tap do |profession|
  profession.update_attributes(
    name: "Bard",
    skill_points: 15,
    combat_points: 2,
    can_use_magic: true,
    heroic_energy: {
      initial:  { 1 => 6, 2 => 7, 3 => 7, 4 => 8, 5 => 8, 6 => 9, 7 => 9, 8 => 10, 9 => 10, 10 => 1 },
      on_level: { 1 => 2, 2 => 3, 3 => 3, 4 => 4, 5 => 4, 6 => 5, 7 => 5, 8 => 6, 9 => 6, 10 => 7 },
    }
  )
end
