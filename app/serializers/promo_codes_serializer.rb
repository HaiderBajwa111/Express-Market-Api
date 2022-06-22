class PromoCodesSerializer < ActiveModel::Serializer
  attributes :id, :name, :valid_till, :discount
end
