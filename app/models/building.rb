class Building < ApplicationRecord
  belongs_to :user
  #listing relationship
  has_many :listings, dependent: :destroy
  
end
