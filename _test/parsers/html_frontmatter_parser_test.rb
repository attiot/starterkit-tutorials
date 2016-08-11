require_relative "../helper"
require_relative "../fixtures"

class HTMLFrontmatterParserTest < Test::Unit::TestCase

  def test_parses_expected_frontmatter_fields
    frontmatter = HTMLFrontmatterParser.call(Fixtures.correct_frontmatter_html)
    assert_equal "theoretick", frontmatter["author"]
    assert_equal "My Title", frontmatter["title"]
    assert_equal "2016-08-10", frontmatter["created_at"]
  end

  def test_handles_duplicate_fields
    frontmatter = HTMLFrontmatterParser.call(Fixtures.duplicate_frontmatter_html)
    assert_equal "theoretick", frontmatter["author"]
    assert_equal "My Title", frontmatter["title"]
    assert_equal "2016-08-10", frontmatter["created_at"]
  end
end
