# exifmap.rb
require 'exifr'

unless ARGV.length == 1  
  puts "Usage: ruby exifmap.rb path_to_image"  
  exit  
end 

begin 
  photo = EXIFR::JPEG.new(ARGV[0])
  
  lat = photo.gps.latitude.to_s
  lng = photo.gps.longitude.to_s
  imgsrc = "http://maps.googleapis.com/maps/api/staticmap?sensor=false&zoom=5&size=600x300&maptype=roadmap&center=#{lat},#{lng}&markers=color:blue%7Clabel:I%7C#{lat},#{lng}"
  p imgsrc

rescue NoMethodError
  p "Sorry. Your image has no longitude and latitude info in the photo metadata." 
rescue Exception => e  
  p e.message
end


