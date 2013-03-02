require "moc_ruby/version"

module MocRuby
  MOCKS = File.expand_path("../moc_ruby/mocks", __FILE__)
end

if defined?(LockOMotion) && LockOMotion.respond_to?(:add_mocks_dir)
  LockOMotion.add_mocks_dir MocRuby::MOCKS
end

unless defined?(MockRuby)
  MockRuby = MocRuby
end