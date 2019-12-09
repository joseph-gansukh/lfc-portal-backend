class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
 
  attributes :id, :name, :description, :price, :category, :picture_url 

  def picture_url 
    variant = object.picture.variant(resize: "400x400") 
    return rails_representation_url(variant, only_path: true)
  end 
end
