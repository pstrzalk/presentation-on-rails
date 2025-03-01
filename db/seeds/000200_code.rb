slide = Slide.create!(title: 'Ruby code')
slide.parts.create!(
  part_type: 'code/ruby',
  position: 1,
  contents: '
class Foo
  def bar
    puts "Hello, world!"
  end
end
  '
)
slide.parts.create!(
  part_type: 'container',
  position: 2,
  contents: '
Code discussion...
  '
)


slide = Slide.create!(title: 'Javascript code')
slide.parts.create!(
  part_type: 'code/javascript',
  position: 2,
  contents: '
const foo = () => {
  console.log("Hello, world!");
}
  '
)


slide = Slide.create!(title: 'HTML code')
slide.parts.create!(
  part_type: 'code/html',
  position: 3,
  contents: '
<div>
  Hello <span class="font-bold">There!</span>
</div>
  '
)
