visit "https://jsfiddle.net/gh/get/jquery/1.7.2/highslide-software/highcharts.com/tree/master/samples/highcharts/boost/line/"

within_frame "result" do
  svg = find "div svg"
  p svg
end

within_frame "result" do
  elems = all "div svg *"
  puts "got #{elems.size} elements"

  elems.each_with_index do |el, index|
    puts "index: #{index}"
    puts "-"*80
    puts el.inspect
  end
end
