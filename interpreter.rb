filename = ARGV.first
code = File.read(filename)
result = code.gsub('doctype', '<!doctype html>')
result = result.gsub('div', '<div></div>')
puts result
File.open('result.html', 'w+') do |encoded|
  encoded.write(result)
end






