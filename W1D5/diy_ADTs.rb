# Stack Class

class Stack
  def initialize
      # create ivar to store stack here!
      @stack = []
  end

  def push(el)
    # adds an element to the stack
    @stack.push(el)
  end

  def pop
    # removes one element from the stack
    @stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @stack.last
  end
end


# Queue Class

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end
end

# Map Class

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    key_arr = []
    @map.each do |key_val|
      key_arr << key_val[0]
    end
    if key_arr.include?(key)
      idx = key_arr.index(key)
      @map[idx][1] = value
    else
      @map << [key, value]
    end
  end

  def get(key)
  end

  def delete(key)
  end

  def show
  end
end