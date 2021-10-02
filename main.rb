# frozen_string_literal: true

# @param position [Integer]
# @return [Float]
def element(position)
  (-1.0)**(position - 1) * Math.sin(position * 2.0) / position.to_f
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
