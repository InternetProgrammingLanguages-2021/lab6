# frozen_string_literal: true

# @param position [Integer]
# @return value [Float]
def element(position)
  (-1)**(position - 1) * Math.sin(position * 2) / position.to_f
end

# @param epsilon [Numeric]
def series(epsilon)
  epsilon = epsilon.to_f
  i = 0
  result = 0.0
  while epsilon <= (result - 1).abs
    i += 1
    result += element i
  end
  result
end
