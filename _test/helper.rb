ENV["APP_ENV"] = "test"

require 'github/markup'
require "nokogiri"
require "test/unit"

require_relative "./fixtures"

SUPPORT_PATH = File.expand_path('./support/**', File.dirname(__FILE__))

Dir[SUPPORT_PATH].each { |rb| require rb }

class Test::Unit::TestCase
  def assert_present(expected)
    expected ? assert_not_equal(expected, "") : assert(expected)
  end
end
