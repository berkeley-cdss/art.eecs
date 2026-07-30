class Art < ApplicationRecord
  belongs_to :last_editor, class_name: "User"
  belongs_to :location
  belongs_to :artist, class_name: "User", optional: true
  has_rich_text :description
  has_one_attached :image
end
