class SocialClass
  include Mongoid::Document

  field :slug, type: String
  field :name, type: String
  field :description, type: String
  field :coins, type: Integer

  class << self
    def former_slave
      @former_slave ||= where(slug: 'former_slave').first
    end

    def former_servant
      @former_servant ||= where(slug: 'former_servant').first
    end

    def free_man
      @free_man ||= where(slug: 'free_man').first
    end

    def small_trader
      @small_trader ||= where(slug: 'small_trader').first
    end

    def craftsman
      @craftsman ||= where(slug: 'craftsman').first
    end

    def experienced_trader
      @experienced_trader ||= where(slug: 'experienced_trader').first
    end

    def low_nobility
      @low_nobility ||= where(slug: 'low_nobility').first
    end

    def high_nobility
      @high_nobility ||= where(slug: 'high_nobility').first
    end
  end
end
