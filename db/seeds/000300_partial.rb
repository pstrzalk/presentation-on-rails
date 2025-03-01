slide = Slide.create!(title: "A partial")
slide.parts.create!(
  part_type: 'partial',
  contents: '/slides/seeds/example'
)
