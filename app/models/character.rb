class Character
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  belongs_to :race
  belongs_to :profession
  belongs_to :social_class
  belongs_to :god

  embeds_many :items, as: :onwer

  embeds_one :weapon, as: :owner
  embeds_one :armor, as: :owner
  embeds_one :helmet, as: :owner
  embeds_one :shield, as: :owner

  field :name, type: String
  field :biography, type: String

  field :age, type: Integer, default: 18
  field :level, type: Integer, default: 1

  field :intelect, type: Integer
  field :aura, type: Integer
  field :charisma, type: Integer
  field :strength, type: Integer
  field :constitution, type: Integer
  field :agility, type: Integer

  field :height, type: Integer
  field :weight, type: Integer

  field :experience, type: Integer, default: 0

  field :physical_energy, type: Integer
  field :heroic_energy, type: Integer

  field :combat_points, type: Integer
  field :magic_points, type: Integer

  field :weapon_groups, type: Hash

  field :coins, type: Integer

  validates :name, presence: true
  validates :intelect, :aura, :charisma, :strength, :constitution, :agility, presence: true, numericality: { only_integer: true }
  validates :height, :weight, presence: true, numericality: { only_integer: true }
  validates :race, :profession, :social_class, :god, presence: true

  before_save :configure_initial_stats

  def current_intelect
    @current_intelect     ||= intelect     + race.modifiers['intelect']
  end

  def current_aura
    @current_aura         ||= aura         + race.modifiers['aura']
  end

  def current_charisma
    @current_charisma     ||= charisma     + race.modifiers['charisma']
  end

  def current_strength
    @current_strength     ||= strength     + race.modifiers['strength']
  end

  def current_constitution
    @current_constitution ||= constitution + race.modifiers['constitution']
  end

  def current_agility
    @current_agility      ||= agility      + race.modifiers['agility']
  end

  def intelect_modifier
    @intelect_modifier ||=     GeneralRule.instance.attribute_modifiers[current_intelect]
  end

  def aura_modifier
    @aura_modifier ||=         GeneralRule.instance.attribute_modifiers[current_aura]
  end

  def charisma_modifier
    @charisma_modifier ||=     GeneralRule.instance.attribute_modifiers[current_charisma]
  end

  def strength_modifier
    @strength_modifier ||=     GeneralRule.instance.attribute_modifiers[current_strength]
  end

  def constitution_modifier
    @constitution_modifier ||= GeneralRule.instance.attribute_modifiers[current_constitution]
  end

  def agility_modifier
    @agility_modifier ||=      GeneralRule.instance.attribute_modifiers[current_agility]
  end

  private

  def configure_initial_stats
    self.physical_energy ||= GeneralRule.instance.physical_energy_for(weight, current_strength + current_constitution)

    self.combat_points ||= profession.combat_points
    self.magic_points  ||= 0
    self.coins         ||= social_class.coins

    true
  end
end
