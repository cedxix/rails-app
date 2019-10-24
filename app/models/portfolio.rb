class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  has_many :technologies

  def self.angular
      where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_item, -> { where(subtitle: 'Ruby on Rails')}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(h:1250,w:600)
    self.thumb_image ||= Placeholder.image_generator(h:350,w:200)
  end
end
