class MP3Importer
  
 attr_accessor :path
  
  def initialize(file)
    @path = file 
  end
  
  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  def import 
    self.files