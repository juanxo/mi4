require 'sinatra/base'


module AssetVersioning

  def versioned_stylesheet(stylesheet)
    mtime = File.mtime(File.join(ScssHandler.views, "#{stylesheet}.scss")).to_i.to_s
    "css/#{stylesheet}-#{mtime}.css"
  end

  def versioned_script(script)
    mtime = File.mtime(File.join(CoffeeHandler.views, "#{script}.coffee")).to_i.to_s
    "/js/#{script}-#{mtime}.js"
  end

end




