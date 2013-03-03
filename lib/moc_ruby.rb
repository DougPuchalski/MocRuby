require "lock-o-motion"
require "moc_ruby/core_ext"
require "moc_ruby/version"

module MocRuby
  MOCKS = File.expand_path("../moc_ruby/mocks", __FILE__)
end

unless defined?(MockRuby)
  MockRuby = MocRuby
end

LockOMotion.add_mocks_dir MocRuby::MOCKS