Web.start!

visit "http://localhost:4567/svg.html"

elems = all "svg *"

elems.each_with_index do |el, i|
  puts i
  puts el.inspect
end
