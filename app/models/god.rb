class God
  include Mongoid::Document

  field :slug, type: String
  field :name, type: String
  field :description, type: String

  GODS = [
    'sevides', 'quiris', 'liris', 'ganis', 'blator', 'crisagom', 'crezir',
    'maira_mon', 'maira_vet', 'maira_nil', 'selimon', 'lena', 'plandis',
    'cambu', 'cruine', 'palier', 'parom'
  ]

  class << self
    GODS.each do |god|
      define_method(god) do
        instance_variable_get("@#{god}") || instance_variable_set("@#{god}", where(slug: god).first)
        instance_variable_get("@#{god}")
      end
    end
  end
end
