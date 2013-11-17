class Race
  include Mongoid::Document

  field :slug, type: String
  field :name, type: String
  field :description, type: String
  field :allowed_professions, type: Array
  field :modifiers, type: Hash
  field :stature, type: Hash
  field :social_class, type: Hash

  class << self
    def human
      @human ||= where(slug: 'human').first
    end

    def halfling
      @halfling ||= where(slug: 'halfling').first
    end

    def dwarf
      @dwarf ||= where(slug: 'dwarf').first
    end

    def wood_elf
      @wood_elf ||= where(slug: 'wood_elf').first
    end

    def golden_elf
      @golden_elf ||= where(slug: 'golden_elf').first
    end

    def half_elf
      @half_elf ||= where(slug: 'half_elf').first
    end
  end
end
