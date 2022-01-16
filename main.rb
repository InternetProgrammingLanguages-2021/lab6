# frozen_string_literal: true

# class containing utils for series
class SeriesUtil
  def self.element(position)
    (-1.0)**(position - 1) * Math.sin(position * 2.0) / position.to_f
  end

  def self.series(epsilon)
    epsilon = epsilon.to_f
    index = 0
    result = 0.0
    result += element(index += 1) while epsilon <= (result - 1).abs
    result
  end
end
