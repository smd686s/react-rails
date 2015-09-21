module React
  module Rails
    class Engine < ::Rails::Engine
      initializer "react_rails.setup_engine", :group => :all do |app|
        app.assets.register_engine '.jsx', React::JSX::Template
        # sprockets_env = app.assets || Sprockets # Sprockets 3.x expects this in a different place
        # sprockets_env.register_engine(".jsx", React::JSX::Templat`e)
      end
    end
  end
end
