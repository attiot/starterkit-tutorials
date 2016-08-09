# Contributing to Starter Kit

Please take the time to review this document in order to simplify and make clear the contribution process for both contributors and reviewers.


## Using the issue tracker

Use the issue tracker for:

* [documentation issues](#contributing-documentation)

Please **do not** use the issue tracker for personal support requests nor feature requests. Support requests should be sent to:

* [Starter Customer Support](https://starterkit.att.com/app/support)
* [Starter Kit Forum](http://developerboards.att.lithium.com/t5/AT-T-IoT-Starter-Kit/bd-p/IoT_Starter_Kit)

**Use the GitHub issue search** &mdash; check if the issue has already been
reported.

Please try to be as detailed as possible in your issue.

## Contributing tutorial documentation

All tutorials must be submitted as valid [Markdown documents](https://en.wikipedia.org/wiki/Markdown). Markdown as described by it's creator John Gruber:

> Markdown is a text-to-HTML conversion tool for web writers. Markdown allows you to write using an easy-to-read, easy-to-write plain text format, then convert it to structurally valid XHTML (or HTML).

Along with valid markdown format a tutorial must include:

1. **A header** - front matter containing: `title`, `author`, and `created_at`. Formatted as:

```md

# <title>

|   Author   |  Created At   |
| ---------- | ------------- |
|  <author>  | <created_at>  |

------

```

2. **A body** the contents of the tutorial.

```md

### Intro

I've always wanted to give my cats more water when its hot outside, so I
decided to hook up my cat feeder and water fountain to the cloud!

Here's how I did it:

### Steps

1. Setup my Starter Kit's *FRDM* ship with Avnet Cellular Shield
2. Open up [Starter Kit `Portal`](https://starterkit.att.com/app)
3. ...
4. profit!
```

3. A filename matching the tutorial title.  If my tutorial is `Integrating IoT Services with my Cat Feeder` then my tutorial file should be: `integrating-iot-services-with-my-cat-feeder`, within the `tutorials/` directory.

4. Images should be stored within the [`images`](./images) and named appropriately to link tutorials with their images (via relative URL references).

[Please see Our sample tutorial for an example](https://github.com/attiot/starterkit-tutorials/blob/master/tutorials/sample-tutorial.md).

## Making a pull request

**IMPORTANT**: By submitting a patch, you agree that your work will be
licensed [under the license used by the project.](license)

When working with git, we recommend the following process in order to craft an excellent pull request:

1. [Fork](http://help.github.com/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/starterkit-tutorials
   # Navigate to the newly cloned directory
   cd starterkit-tutorials
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/attiot/starterkit-tutorials
   ```

2. If you cloned a while ago, get the latest changes from upstream, and update your fork:

   ```bash
   git checkout master
   git pull upstream master
   git push
   ```

3. Create a new topic branch (off of `master`) to contain your feature, change,
   or fix.

   **IMPORTANT**: Making changes in `master` is discouraged. You should always
   keep your local `master` in sync with upstream `master` and make your
   changes in topic branches.

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Commit your changes in logical chunks. Keep your commit messages organized,
   with a short description in the first line and more detailed information on
   the following lines. Feel free to use Git's
   [interactive rebase](https://help.github.com/articles/interactive-rebase)
   feature to tidy up your commits before making them public.

5. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

6. [Open a Pull Request](https://help.github.com/articles/using-pull-requests/)
    with a clear title and description.

7. If you haven't updated your pull request for a while, you should consider
   rebasing on master and resolving any conflicts.

   **IMPORTANT**: _Never ever_ merge upstream `master` into your branches. You
   should always `git rebase` on `master` to bring your changes up to date when
   necessary.

   ```bash
   git checkout master
   git pull upstream master
   git checkout <your-topic-branch>
   git rebase master
   ```

Thank you for your contributions!
