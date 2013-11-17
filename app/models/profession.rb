class Profession
  include Mongoid::Document

  field :slug, type: String
  field :name, type: String
  field :description, type: String
  field :skill_points, type: Integer
  field :combat_points, type: Integer
  field :heroic_energy, type: Hash
  field :can_use_magic, type: Mongoid::Boolean

  class << self
    def warrior
      @warrior ||= where(slug: 'warrior').first
    end

    def thief
      @thief ||= where(slug: 'thief').first
    end

    def cleric
      @cleric ||= where(slug: 'cleric').first
    end

    def mage
      @mage ||= where(slug: 'mage').first
    end

    def ranger
      @ranger ||= where(slug: 'ranger').first
    end

    def bard
      @bard ||= where(slug: 'bard').first
    end
  end
end
