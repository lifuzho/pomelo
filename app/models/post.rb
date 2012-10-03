class Post < ActiveRecord::Base
  attr_accessible :category_id, :content, :draft, :image_id, :protected_answer, :protected_question, :published_at, :summary, :title
end
