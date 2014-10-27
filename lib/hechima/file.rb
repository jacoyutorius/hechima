class File
	def self.remove_ext file
		return file if File::ftype(file) == "directory"
		path_array = file.split("/")	
		filename = path_array.last
		path_array.delete_at -1
		path_array << filename.slice(0, filename.index("."))
		path_array.join("/")
	end
end