; extends

((latex_block)
  (#set! image.lang "typst")
  (#set! image.ext "math.typ")
) @image.content @image

(image
  [
    (link_destination) @image.src
    (image_description (shortcut_link ((link_text) @image.src)))
  ]
    (#gsub! @image.src "|.*" "") ; remove wikilink image options
    (#gsub! @image.src "^<" "") ; remove bracket link
    (#gsub! @image.src ">$" "")
  ) @image
