class Teacher < ActiveRecord::Base
  validates :phone, :address, :about_me, presence: true
  validates :about_me, length: { in: 50...500 }
  validates :phone, numericality: { only_integer: true }
end
