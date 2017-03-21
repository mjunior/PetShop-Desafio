class Dog < ApplicationRecord
  validates :name, :owner, :genre, :breed, :phone, :last_time, :birthday, presence: true
  validates :castrated, inclusion: { in: [ true, false ] }
end
