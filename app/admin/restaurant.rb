ActiveAdmin.register Restaurant do
  permit_params :name, :address, :published

  preserve_default_filters!
  filter :reviews, as: :select, collection: Review.all.map{|review| [review.content, review.id] }
end
