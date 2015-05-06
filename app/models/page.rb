class Page < ActiveRecord::Base
  validates :title, :path, uniqueness: true, presence: true
  validates :slug, presence: true, if: :pages_exist?

  before_validation :build_path
  after_save :reload_routes

  has_one :parent_page, class_name: 'Page'
  has_many :sections

  def has_parent?
    parent_page.present?
  end

  def home_page?
    id == 1
  end

  private #####################################################################

  def build_slug
    self.slug = title.downcase.gsub(/[^0-9a-z]/, " ").gsub(" ", "-") if pages_exist?
  end

  def build_path
    build_slug

    self.path = if has_parent? && !parent_page.home_page?
      "#{parent_page.slug}/#{slug}"
    else
      "/#{slug}"
    end
  end

  def reload_routes
    RailYard.reload
  end

  def pages_exist?
    Page.exists?
  end
end
