class CommentSerializer < ActiveModel::Serializer
  attributes :id, :data
  belongs_to :product
  belongs_to :user
end
