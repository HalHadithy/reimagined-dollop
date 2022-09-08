class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :sweet_id, :price
  # I know sweet id wasn't what you wanted but I left it as a placeholder
end
