class Party < ActiveRecord::Base
  attr_accessible :name, :phone, :size, :wait
  belongs_to :user
end
