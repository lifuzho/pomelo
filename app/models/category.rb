class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :portected_answer, :position, :protected_question
end
