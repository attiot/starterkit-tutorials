require_relative "../helper"

class TutorialsTest < Test::Unit::TestCase

  def test_tutorials_all_contain_properly_formatted_frontmatter
    tutorials_path = File.expand_path("../../tutorials/**/*.md", File.dirname(__FILE__))

    Dir[tutorials_path].each do |file|
      tutorial_html = GitHub::Markup.render(file)
      frontmatter = HTMLFrontmatterParser.call(tutorial_html)

      assert_present frontmatter["author"]
      assert_present frontmatter["title"]
      assert_present frontmatter["created_at"]
    end
  end
end
