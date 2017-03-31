require_relative 'main.rb'
[10e-3, 10e-4].each do |e|
  result = integral(e)
  puts "Значение интеграла с точностью #{e} равна S = #{result[0]}"
  puts "Количество итераций: i = #{result[1]}"
  print "\n"
end