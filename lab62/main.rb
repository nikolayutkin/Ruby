def integral (precision)
  n = 0
  (1..1.0/0).take_while { |x| n = x; (calculate(n)-14.0/9.0).abs > precision }
  [calculate(n), n]
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