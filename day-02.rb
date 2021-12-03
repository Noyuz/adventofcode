require_relative 'common'

class Day2 < AdventDay
  def first_part
    p input
    horizon = 0
    depth = 0
    input.each_slice(2).each do |a|
      case a[0]
      when 'forward' then horizon += a[1]
      when 'down' then depth += a[1]
      when 'up' then depth -= a[1]
      end
    end
    horizon * depth
  end

  def second_part
    aim = 0
    horizon = 0
    depth = 0
    input.each_slice(2).each do |a|
      case a[0]
      when 'forward'
        horizon += a[1]
        depth += (aim * a[1])
      when 'down' then aim += a[1]
      when 'up' then aim -= a[1]
      end
    end
    horizon * depth
  end

  private

  def convert_data(data)
    super
  end
end

Day2.solve
