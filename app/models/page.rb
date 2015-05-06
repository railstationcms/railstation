class Page < ActiveRecord::Base
  validates :title, :path, uniqueness: true, presence: true
  validates :slug, presence: true, if: :pages_empty?

  before_validation :build_path
  after_save :reload_routes

  has_one :parent_page, class: Page
  has_many :sections

  def has_parent?
    parent_page.present?
  end

  private #####################################################################

  def build_slug
    self.slug = title.downcase.gsub(" ", "-").gsub(/[^0-9a-z]/, '') if !pages_empty?
  end

  def build_path
    build_slug

    self.path = if has_parent?
      "#{parent_page.slug}/#{slug}"
    else
      "/#{slug}"
    end
  end

  def reload_routes
    RailYard.reload
  end

  def pages_empty?
    !Page.exists?
  end
end
