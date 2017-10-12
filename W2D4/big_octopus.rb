
def sluggish_octopus(fishes)
  fishes.each_with_index do |fish1, i1|
    biggest_fish = true
    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      biggest_fish = false if fish2.length > fish1.length
    end

    return fish1 if biggest_fish
  end
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }
    return self if count <= 1
    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)
    merged
  end
end

def dominant_octopus(fishes)
  prc = Proc.new { |x, y| y.length <=> x.length }
  fishes.merge_sort(&prc)[0]
end

def clever_octopus(fishes)
  biggest_fish = fishes.first

  fishes.each do |fish|
    if fish.length > biggest_fish.length
      biggest_fish = fish
    end
  end

  biggest_fish
end

def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |tile, index|
    return index if tile == direction
  end
end


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]
end
