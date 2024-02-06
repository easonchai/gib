# gib - Image and Meme Fetcher 🖼️

The `gib` tool is a simple, command-line utility for fetching random images and memes. It's perfect for developers and content creators who need placeholder images or a touch of humor in their projects. The tool fetches images from Lorem Picsum and memes from the Meme API, saving them locally with either a timestamp or a custom filename.

## Project Structure 📁

```bash
.
├── gib.sh    # source
├── gib       # main executable
└── README.md
```

## Features 🌟

- Fetch random images from Lorem Picsum.
- Fetch random memes from [Meme API](https://github.com/D3vd/Meme_Api), with unsupported format filtering.
- Save fetched images/memes with a timestamp or a custom filename.

## Local Setup and Usage 🧰

Before you start using `gib`, ensure you have the following prerequisites installed:

- `curl` and `jq` for making API requests and parsing JSON responses.

## Installation 📥

1. Clone the repository:

```bash
git clone git@github.com:easonchai/gib.git
```

Move gib to your binaries folder:

```bash
cd gib && cp gib /usr/local/bin/gib
```

## Fetching Images/Memes 🖼️

To use gib, simply run the script with the desired command:

Fetch a random image:

```bash
./gib image [optional: filename]
```

Fetch a random meme:

```bash
./gib meme [optional: filename]
```

Images will be saved in the current directory with the format `image-timestamp.png` or `meme-timestamp.png`, or with your custom filename if provided.

## Customization 🛠️

You can customize the script to change the source APIs or the range of dimensions for the random images by editing the script parameters.

## Security Considerations 🔒

While gib is a simple tool, always ensure you're aware of the content it fetches, especially when using the meme feature, as the content is sourced from third-party APIs.

## Contribution and Feedback 🤝

Feel free to fork the project, submit pull requests, or send in your feedback and suggestions to improve the gib tool.

## Further Improvements & Optimizations 🚀

- [ ] Add support for more image sources and meme APIs.
- [ ] Add ability to set resolution via CLI
- [ ] Add more filters and options to specify type of image/meme
- [ ] Implement a feature to specify the image dimensions directly in the command.
- [ ] Improve error handling and add more descriptive error messages.

Enjoy using gib for your image and meme fetching needs!
