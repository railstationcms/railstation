class RailYard
  def self.load
    Railstation::Application.routes.draw do
      if defined? Page
        Page.all.each do |pg|
          puts "Routing #{pg.slug}"
          get "/#{pg.slug}", :to => "pages#show", defaults: { id: pg.id }
        end
      end
    end
  end

  def self.reload
    Railstation::Application.routes_reloader.reload!
  end
end
