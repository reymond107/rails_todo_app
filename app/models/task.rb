class Task < ApplicationRecord
    # belongs_to :user
    belongs_to :category
    
    
    validates :category_id, presence: true
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :date, presence: true
    
end
