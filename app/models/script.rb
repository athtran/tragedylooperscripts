class Script < ApplicationRecord
	belongs_to :user
	has_many :comments, :dependent=> :destroy
	has_many :casts, :dependent=> :destroy
	accepts_nested_attributes_for :casts
end
