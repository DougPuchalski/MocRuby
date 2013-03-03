require "lock-o-motion"
require "moc_ruby/core_ext"
require "moc_ruby/version"

module MocRuby
  extend self

  MOCKS_DIRS = Dir.glob(File.expand_path("../moc_ruby/mocks/*", __FILE__))

  def init
    MOCKS_DIRS.each do |mocks_dir|
      LockOMotion.add_mocks_dir mocks_dir
    end
  end

end

MocRuby.init

unless defined?(MockRuby)
  MockRuby = MocRuby
end