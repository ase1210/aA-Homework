class House < ActiveRecord::Base
  validates :address, null: false

  has_many :residents,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
end