# Ruby's Course Website

Located here - <http://ruby.hackbulgaria.com>

## How To Add Lectures

You can do this in two simple steps:

1. Add your `XY.slim` file in `lectures/` where `XY` and the proper numbers
2. List your lecture in `_data/lectgures.yml`

If you are running Jekyll on your localhost, in order to access the given lecture, you should add `.html` to it:

`/lectures/01` should be `lectures/01.html`

## How To Run

Install the needed gems:

```
$ bundle install
```

Afer this, you can run Jekyll:

```
$ bundle exec jekyll serve -w
```

If you want to deploy, you are going to need Capistrano:

```
$ bundle exec cap deploy
```
