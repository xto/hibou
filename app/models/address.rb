class Address < ActiveRecord::Base
  belongs_to :family

  #validates_presence_of :civic_number, :apartment, :street, :city, :province, :postal_code, :family

  def to_s
    "#{self.civic_number}, #{self.street}, #{self.apartment}, #{self.city}, #{self.province}, #{self.postal_code}"
  end
end
