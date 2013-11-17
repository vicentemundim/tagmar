# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :character do
    name "Bilbo Baggings"
    biography "A very nice hobbit!"

    race { Race.halfling }
    profession { Profession.thief }
    social_class { SocialClass.experienced_trader }

    god { God.cambu }

    age 16
    level 1

    intelect 18
    aura 12
    charisma 17
    strength 12
    constitution 14
    agility 20

    height 122
    weight 37

    experience 0

    heroic_energy 11

    factory :golden_elf_character do
      name "Elrond"
      biography "A powerful magician"

      race { Race.golden_elf }
      profession { Profession.mage }
      social_class { SocialClass.high_nobility }

      god { God.palier }

      age 300
      level 1

      intelect 20
      aura 20
      charisma 15
      strength 9
      constitution 11
      agility 14

      height 177
      weight 67

      experience 0

      heroic_energy 7
    end
  end
end
