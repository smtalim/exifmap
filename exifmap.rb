# exifmap.rb
require 'exifr'

unless ARGV.length == 1  
  puts "Usage: ruby exifmap.rb path_to_image"  
  exit  
end 

begin 
  a = EXIFR::JPEG.new(ARGV[0])
  
  p a.gps.latitude
  p a.gps.longitude
  
rescue NoMethodError
  p "Sorry. Your image has no longitude and latitude info in the photo metadata." 
rescue Exception => e  
  p e.message
end




