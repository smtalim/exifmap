# exifmap.rb
require 'exifr'

a = EXIFR::JPEG.new("benzy1.jpg")

p a.gps.latitude.to_s
p a.gps.longitude.to_s

#http://www.online-tech-tips.com/computer-tips/how-to-determine-where-a-picture-was-taken/
#http://regex.info/exif.cgi
#http://www.cloudspace.com/blog/2009/02/16/decoding-gps-latitude-and-longitude-from-exif-in-ruby/
#https://github.com/remvee/exifr
#https://developers.google.com/maps/documentation/staticmaps/#quick_example

#http://www.digital-photo-secrets.com/tip/38/what-is-exif/
#http://blog.wikimedia.org/2013/01/31/geodata-a-new-age-of-geotagging-on-wikipedia/
#http://helpdeskgeek.com/how-to/view-photo-exif-metadata-on-iphone-mac-and-windows/



