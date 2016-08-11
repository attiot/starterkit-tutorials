require "nokogiri"

class HTMLFrontmatterParser

  BASE_URI = "https://github.com/attiot/starterkit-tutorials/raw/master"

  def self.call(html)
    content_doc = Nokogiri::HTML::DocumentFragment.parse(html)
    convert_relative_paths_to_absolute(content_doc)
    frontmatter_from_content(content_doc)
  end

  def self.convert_relative_paths_to_absolute(content_doc)
    [{tag: "a", attribute: "href"}, {tag: "img", attribute: "src"}].each do |el|
      tag, attribute = el.values_at(:tag, :attribute)

      content_doc.css(tag).each do |element|
        path = element[attribute]
        next unless path && path.start_with?("../")

        element.attributes[attribute].value = path.sub("..", BASE_URI)
      end
    end
  end

  def self.frontmatter_from_content(content_doc)
    author     = content_doc.search('article table:first-of-type tbody td:nth-child(1)').text
    created_at = content_doc.search('article table:first-of-type tbody td:nth-child(2)').text
    title      = content_doc.search('h1:first-of-type').text

    {
      "author" => author,
      "created_at" => created_at,
      "title" => title
    }
  end
end
