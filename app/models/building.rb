class Building < ApplicationRecord
  belongs_to :user
  #listing relationship
  has_many :listings, dependent: :destroy
  has_many :companies, through: :users

end
