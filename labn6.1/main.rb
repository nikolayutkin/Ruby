def integral (precision)
  n = 0
  loop do
    n += 1
    break unless (calculate(n)-14.0/9.0).abs > precision
  end
  [calculate(n), n] # количество итераций посчитано на 1 больше
end

def calculate(n)
  x = 1.0/n
  res = 0
  i = 0
  n.times do
    i += x
    res += Math.sqrt(1+3*i)*x
  end
  res
end