class Page < ActiveRecord::Base
  validates :title, uniqueness: true, presence: true
  validates :slug, uniqueness: true, presence: true

  after_save :reload_routes

  has_one :parent_page, class: Page

  def reload_routes
    RailYard.reload
  end
end
