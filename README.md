# Presentation in Rails

An example Rails application, which may be used a basis to create a presentation.

## How to use it

The application is based on a `Slide` model, where each `Slide` may contain any number of `Part` instances. Each part represents a piece of the slide and may be either represented by a predefined element (list, text, heading, image, etc.) or a custom partial.

Put the definition of your slides in `db/seeds` and run `rails db:seed`. Whenever you change the definition, run `rails db:seed` again.
You might not use `rails db:seed:replant` not to loose other records. Seeding has been adjusted to remove all the slides beforehand.

### Important for non-SQLite users

This app is prepared to be used with SQLite - `seed.rb` file containts a single SQLite specific call. Review it when you use another DB and check if you need it.

## Changing slides

You may change slides using `m` and `n` letters or `Page Up`/`Page Down` keys. The latter are sent from presentation clickers (the ones I checked at least) when next/previous slide buttons are used. If your clicker uses different signals, update the key bindings in the `/slides/show` view.

### A Hint

The clickers usually are able to sent additional signals - for example a Tab key press. If you decide to bind this key, remember to use `event.preventDefault()` in the handler, as Tab is nasty and bubbles into other, unexpected events.

## Deploying to a VM

As every Ruby on Rails application, it's easy to deploy it to any VM and use remotely. Remenber to keep the image sizes small in such case (<50kb for and immage would be the best). Make sure your images are in `webp` format and use low enough quality. It won't be visible in a presentation even if you push the quality much lower than for a typical website.

## PWA

Remember that you can install it as a PWA (no matter whether you use it locally or remotely). It will give you an easy way to start your presentation.
