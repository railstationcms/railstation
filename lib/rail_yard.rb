class RailYard
  def self.load
    Railstation::Application.routes.draw do
      if defined? Page
        Page.all.each do |pg|
          puts "Routing #{pg.path}"
          get pg.path, :to => "pages#show", defaults: { id: pg.id }
        end
      end
    end
  end

  def self.reload
    Railstation::Application.routes_reloader.reload!
  end
end
