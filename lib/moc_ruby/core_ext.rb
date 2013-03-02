module Singleton
  def self.extend_object(*args, &block)
    puts "Called Singleton.extend_object from #{caller[0].match(/^[^:]+/)}"
  end
end

class StandardError
  def chain(*args, &block)
    puts "Called #{self.class}.chain from #{caller[0].match(/^[^:]+/)}"
  end
  def chain=(*args, &block)
    puts "Called #{self.class}.chain= from #{caller[0].match(/^[^:]+/)}"
  end
end

class Pathname
  def =~(*args, &block)
    puts "Called #{self.class}.=~ from #{caller[0].match(/^[^:]+/)}"
  end
end