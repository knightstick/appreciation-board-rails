class AppreciationSerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :created_at, :updated_at
end
