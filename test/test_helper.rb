# typed: ignore
# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"

$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))
require "constant_resolver"
require "packwerk"

require "minitest/autorun"
require "minitest/focus"
require "support/test_macro"
require "support/test_assertions"

require "mocha/minitest"

ROOT = Pathname.new(__dir__).join("..").expand_path

Minitest::Test.extend(TestMacro)
Minitest::Test.include(TestAssertions)

Mocha.configure do |c|
  c.stubbing_non_existent_method = :prevent
end
