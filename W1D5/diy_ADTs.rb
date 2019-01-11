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

  end

  def set(key, value)
  end

  def get(key)
  end

  def delete(key)
  end

  def show
  end
end