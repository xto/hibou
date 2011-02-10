class Family < ActiveRecord::Base
  has_one :address
  has_many :children
  accepts_nested_attributes_for :address

  validates_presence_of :fathers_first_name, :fathers_last_name, :mothers_first_name, :mothers_last_name, :address

end
