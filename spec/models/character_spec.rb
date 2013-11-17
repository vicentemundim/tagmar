require 'spec_helper'

describe Character do
  context "when it is a halfling" do
    subject(:character) { build :character }

    its(:current_intelect)      { should eq(character.intelect     + character.race.modifiers['intelect']) }
    its(:current_aura)          { should eq(character.aura         + character.race.modifiers['aura']) }
    its(:current_charisma)      { should eq(character.charisma     + character.race.modifiers['charisma']) }
    its(:current_strength)      { should eq(character.strength     + character.race.modifiers['strength']) }
    its(:current_constitution)  { should eq(character.constitution + character.race.modifiers['constitution']) }
    its(:current_agility)       { should eq(character.agility      + character.race.modifiers['agility']) }

    its(:intelect_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_intelect]) }
    its(:aura_modifier)         { should eq(GeneralRule.instance.attribute_modifiers[character.current_aura]) }
    its(:charisma_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_charisma]) }
    its(:strength_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_strength]) }
    its(:constitution_modifier) { should eq(GeneralRule.instance.attribute_modifiers[character.current_constitution]) }
    its(:agility_modifier)      { should eq(GeneralRule.instance.attribute_modifiers[character.current_agility]) }

    context "when creating" do
      before { character.save }

      its(:combat_points)    { should eq(character.profession.combat_points) }
      its(:magic_points)     { should be_zero }

      its(:coins)            { should eq(character.social_class.coins) }

      its(:physical_energy)  { should eq(GeneralRule.instance.physical_energy_for(character.weight, character.current_strength + character.current_constitution)) }
    end
  end

  context "when it is a golden elf" do
    subject(:character) { build :golden_elf_character }

    its(:current_intelect)     { should eq(character.intelect     + character.race.modifiers['intelect']) }
    its(:current_aura)         { should eq(character.aura         + character.race.modifiers['aura']) }
    its(:current_charisma)     { should eq(character.charisma     + character.race.modifiers['charisma']) }
    its(:current_strength)     { should eq(character.strength     + character.race.modifiers['strength']) }
    its(:current_constitution) { should eq(character.constitution + character.race.modifiers['constitution']) }
    its(:current_agility)      { should eq(character.agility      + character.race.modifiers['agility']) }

    its(:intelect_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_intelect]) }
    its(:aura_modifier)         { should eq(GeneralRule.instance.attribute_modifiers[character.current_aura]) }
    its(:charisma_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_charisma]) }
    its(:strength_modifier)     { should eq(GeneralRule.instance.attribute_modifiers[character.current_strength]) }
    its(:constitution_modifier) { should eq(GeneralRule.instance.attribute_modifiers[character.current_constitution]) }
    its(:agility_modifier)      { should eq(GeneralRule.instance.attribute_modifiers[character.current_agility]) }

    context "when creating" do
      before { character.save }

      its(:combat_points)   { should eq(character.profession.combat_points) }
      its(:magic_points)    { should be_zero } # TODO: this should come from a GeneralRule

      its(:coins)           { should eq(character.social_class.coins) }

      its(:physical_energy) { should eq(GeneralRule.instance.physical_energy_for(character.weight, character.current_strength + character.current_constitution)) }
    end
  end
end
