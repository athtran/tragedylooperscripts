class Tset < ApplicationRecord
	belongs_to :user
	has_attached_file :attachment_1
	validates_attachment_content_type :attachment_1, :content_type => ["application/pdf"] 
end
