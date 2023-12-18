# Comment Extension For Quarto

A simple Quarto shortcode to add and manage commented text to a document or project.

## Installing

```bash
quarto add harveyl888/comment
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Embed commented text using `{{comment_start}}` and `{{comment_stop}}`.  Comment text inline using `{{comment_inline text}}`.  
The project or document-level variable `show_comments` is a boolean controlling whether comments are rendered or hidden.  
Comments can be styled by adjusting the `cmt` class in `style.css`.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

