#let name = "Angel Cervera Roldan"
#let student_number = "21319203"

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: ( name, student_number ), type: "notes", logo: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: end)
  set text(font: "New Computer Modern", lang: "en")
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  if type != "hw" {
    set heading(numbering: "1.1.")
  }

  set par(leading: 0.75em)

  // Title page.
  // The page can contain a logo if you pass one with `logo: "logo.png"`.
  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(9.6fr)

  text(2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start, strong(author))),
    ),
  )

  v(2.4fr)
  pagebreak()


  // Table of contents.
  if type != "hw" {
    outline(depth: 3, indent: true)
    pagebreak()
  }

  // Main body.
  set par(justify: true)

  body
}

#let coloured_box(fill, stroke, content) = align(center,
    rect(
        width: 100%, 
        fill: fill,
        stroke: stroke,
        radius: 2pt,
        inset: 20pt, 
        align(left, content)
    )
)

#let homework_box(content) = coloured_box(rgb(232, 232, 248, 255), rgb(132, 132, 148, 255), content)

#let defbox(title: "", content) = coloured_box(rgb(232, 232, 248, 255), rgb(132, 132, 148, 255), content)

#let thmbox(title: "", content) = coloured_box(rgb(232, 232, 248, 255), rgb(132, 132, 148, 255), content)
