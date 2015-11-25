class Hoge < ActiveRecord::Base
  has_many :foos
  accepts_nested_attributes_for :foos
end
