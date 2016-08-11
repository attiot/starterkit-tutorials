# HTML Fixtures for testing markdown parser
module Fixtures
  module_function

  def correct_frontmatter_html
    <<-eos
      <div>
        <article>
          <h1>My Title</h1>

          <table>
            <thead>
              <tr>
                <th>Author</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>theoretick</td>
                <td>2016-08-10</td>
              </tr>
            </tbody>
          </table>

          <hr>

          <h3>My Introduction</h3>

          <p>malkovich malkovich malkovich malkovich malkovich malkovich</p>
        </article>
      </div>
    eos
  end

  def duplicate_frontmatter_html
    <<-eos
      <div>
        <article>
          <h1>My Title</h1>
          <h1>My Other</h1>

          <table>
            <thead>
              <tr>
                <th>Author</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>theoretick</td>
                <td>2016-08-10</td>
              </tr>
            </tbody>
          </table>

          <table>
            <thead>
              <tr>
                <th>Author</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>other author</td>
                <td>other timestamp</td>
              </tr>
            </tbody>
          </table>

          <hr>

          <h3>My Introduction</h3>

          <p>malkovich malkovich malkovich malkovich malkovich malkovich</p>

          <table>
            <thead>
              <tr>
                <th>Author</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>yet another author</td>
                <td>yet another timestamp</td>
              </tr>
            </tbody>
        </article>
      </div>
    eos
  end
end
