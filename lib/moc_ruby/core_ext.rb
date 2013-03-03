# MacRuby undefines the following methods

module Singleton
  def self.extend_object(obj); end
end

class Pathname
  def =~(regexp); end
end