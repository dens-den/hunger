# HunGer

Personal blog-like project for mastering Hungarian and German languages.

All the texts published are taken from the book “Hogy mondjunk németül?“ (of the series “Tanuljunk nyelveket!“). I do not claim the copyright of all examples from the book. The examples are used only in educational purposes; I do not pursue any commercial goals.

## Getting Up and Running Locally

1. Install [Hugo](https://gohugo.io/getting-started/installing)
1. `git clone https://github.com/denpatin/hunger.git && cd hunger`
1. `hugo server -D`
1. Go to `http://localhost:1313` and see the blog run

## Adding a New Post

1. `hugo new posts/123-some-new-post.md`
1. Open `content/posts/123-some-new-post.md` in text editor
1. Customize title, date, or whatever you want
  > Note that the skeleton of the post is taken from `archetypes/default.md`

## Publishing a New Post

1. `./publish.sh`

## Contributing

1. Open a [new issue](https://github.com/denpatin/hunger/issues/new) indicating the request/typo/whatever
1. Thanks!

## Contributors

- [denpatin](https://github.com/denpatin) Den Patin

## License

MIT License
