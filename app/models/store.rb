class Store
  include Mongoid::Document

  embeds_many :common_items, as: :owner

  embeds_many :professional_materials, as: :owner
  embeds_many :transports, as: :owner
  embeds_many :animals, as: :owner
  embeds_many :residences, as: :owner

  embeds_many :weapons, as: :owner
  embeds_many :armors, as: :owner
  embeds_many :helmets, as: :owner
  embeds_many :shields, as: :owner

  field :name, type: String
end
