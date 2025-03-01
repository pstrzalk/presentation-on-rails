slide = Slide.create!
slide.parts.create!(
  part_type: 'headline',
  position: 1,
  contents: 'This is a headline'
)

slide = Slide.create!(title: 'With title')
slide.parts.create!(
  part_type: 'container',
  position: 1,
  contents: 'This is just a text'
)
slide.parts.create!(
  part_type: 'list',
  position: 2,
  contents: '
  <li>one</li>
  <li>two</li>
  <li>three</li>
  '
)

slide = Slide.create!(title: 'Image')
slide.parts.create!(
  part_type: 'image',
  contents: '/images/example.webm'
)
