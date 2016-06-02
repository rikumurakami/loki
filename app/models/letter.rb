class Letter < ActiveRecord::Base
  validates :mail, presence: true
  validates :name, presence: true
end
