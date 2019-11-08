class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :topic, optional: true
  validates_presence_of :title, :body
end
