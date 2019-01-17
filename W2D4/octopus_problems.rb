# Sluggish Octopus -  O(n^2) 
arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  result = arr.dup
  i = 0
  while i < result.length - 1
    if result[i].length > result[i+1].length
      result[i], result[i+1] = result[i+1], result[i] 
      i = 0
    else
      i += 1
    end
  end
  [result.last]
end

# Dominant Octopus - O(n log n)
def dominant_octopus(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = dominant_octopus(arr[0...mid])
  right = dominant_octopus(arr[mid..-1])

  result = merge(left, right)
  [result.last]
end

def merge(left, right)
  result = []

  until left.empty? || right.empty?
    if left[0].length > right[0].length
      result << right.shift
    else
      result << left.shift
    end
  end
  (result + left + right)
end

# Clever Octopus - O(n)
def clever_octopus(arr)
  dup = arr.dup
  result = []
  result << dup.shift
  dup.each do |el|
    result[0] = el if el.length > result[0].length
  end
  result
end

p sluggish_octopus(arr)
p dominant_octopus(arr)
p clever_octopus(arr)


# Dancing Octopus
tiles_arr = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]

# Slow Dance

def slow_dance(dir, arr)
  arr.each_with_index do |el, idx|
    return idx if el == dir
  end
end

p slow_dance("up", tiles_arr)
p slow_dance("right-down", tiles_arr)

# Constant Dance

new_tiles = [0,1,2,3,4,5,6,7]

def constant_dance(dir, new_tiles_data_structure)
  
end