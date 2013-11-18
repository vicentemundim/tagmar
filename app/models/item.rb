class Item
  include Mongoid::Document

  embedded_in :owner, polymorphic: true

  field :name, type: String
  field :value, type: Integer
  field :amount, type: Integer, default: 1
end
