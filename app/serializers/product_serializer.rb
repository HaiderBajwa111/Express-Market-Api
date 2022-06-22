class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :stock, :price, :serial_number, :owner_id, :image_url
  has_many :comments
   has_one :image

   def image_url
    url_for(object.image) if object.image.attachment
end
end
