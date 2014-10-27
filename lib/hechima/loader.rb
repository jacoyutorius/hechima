require "hechima/file"

module Hechima
	def self.load routing, views_dir="/app/views"
	  
	  target_dir = File.join(Rails.root.to_s, views_dir)
	  anonymous_views = get_no_controller_views target_dir
	  exclude_views = get_has_controller_views


	  (anonymous_views - exclude_views).each do |path|

	    if path.split("/").count > 1
	      path_array = path.split("/")
	      path_array.delete(path_array.last) if %w(index).include? path_array.last
	      route = path_array.join "/"

      	routing.get "#{route}" => "hechima#index", :defaults => {:file => "#{path}"}
	    else
	      
      	routing.get "#{path}" => "hechima#index", :defaults => {:file => "#{path}"}
	    end

	  end


	  require "hechima/hechima_controller"

	end


	private
		def self.get_no_controller_views target_dir
			list = []
			Dir::glob(File.join(target_dir, "/**/")).each do |dir|
		    Dir::glob(File.join(dir, "*")).each do |file|
		      next unless File.extname(file) == ".erb"
		      next if File.basename(file)[0] == "_"

		      list << File.remove_ext(file).match(/#{target_dir}\/(.+)/)[1]
		    end
		  end 

		  list
		end

		def self.get_has_controller_views
			list = %w(layouts/application)
			Rails.application.routes.routes.each do |route|
				list << "#{route.defaults[:controller]}/#{route.defaults[:action]}"
			end

			list
		end
end