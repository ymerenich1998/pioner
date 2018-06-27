class Prepod < ApplicationRecord
	validates :name, length: { in: 1..64 }
	validates :description, length: { in: 10..5012 }
	validates :name, uniqueness: true
	validates :name, presence: true

	has_attached_file :photo, styles: { medium: "1368x990>", thumb: "300x180>" }, default_url: "default.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
