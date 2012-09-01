class Party < ActiveRecord::Base
  attr_accessible :name, :phone, :size, :wait, :notes
  belongs_to :user
  validates :name, :presence => true
  validates :phone, :presence => true
  validates :size, :numericality => { :only_integer => true }
  validates :wait, :numericality => { :only_integer => true }
end
