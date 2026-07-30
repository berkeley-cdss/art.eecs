# art.eecs

A Rails application for cataloging artwork around Berkeley EECS: art pieces
with rich-text descriptions and images, the locations where they live, and the
people who made or curated them.

## Tech stack

- **Ruby 4.0 / Rails 8.1** (versions pinned in [`.tool-versions`](.tool-versions))
- **PostgreSQL** for the database
- **[Vite](https://vite-ruby.netlify.app)** builds the frontend (`app/frontend`)
- **[Bootstrap 5](https://getbootstrap.com)** for styling, compiled from Sass
- **[ViewComponent](https://viewcomponent.org)** for reusable view components (`app/components`)
- **[htmx](https://htmx.org)** for JavaScript-sprinkled interactivity (`hx-boost` is enabled globally)
- **[Lexxy](https://github.com/basecamp/lexxy)** as the Action Text rich-text editor
- **RSpec** with FactoryBot for tests
- **RuboCop (rails-omakase)**, **Brakeman**, and **bundler-audit** for lint/security

## Getting started

### Dev Container

The easiest path: open the repo in VS Code (or any Dev Containers-compatible
editor) and reopen in container. PostgreSQL, Ruby, and Node are provisioned
automatically and `bin/setup` runs on create.

### Local setup

Install Ruby and Node with [mise](https://mise.jdx.dev) (or asdf — versions
come from `.tool-versions`), make sure PostgreSQL is running, then:

```sh
bin/setup
```

That installs gems and npm packages, prepares the databases, and starts the
app. To start it yourself later:

```sh
bin/dev
```

This runs Puma and the Vite dev server together via `Procfile.dev`. The app is
at <http://localhost:3000>.

## Tests and checks

```sh
bundle exec rspec   # test suite
bin/rubocop         # style
bin/brakeman        # static security analysis
bin/bundler-audit   # known-CVE scan of the bundle
bin/ci              # everything CI runs, locally
```

CI (GitHub Actions) runs the same checks plus the suite against PostgreSQL 17.

## Frontend notes

- Entry points live in `app/frontend/entrypoints`; shared code in `app/frontend`.
- `application.scss` pulls in Bootstrap; customize via Sass variables there.
- htmx is initialized in `application.js`, which also injects the Rails CSRF
  token into every htmx request.
- `form.rich_text_area` renders a Lexxy editor. Its stylesheet is served from
  the gem through Propshaft (`stylesheet_link_tag "lexxy"` in the layout).

## Deployment

`Dockerfile` builds a production image (Vite assets precompiled, served by
Puma behind [Thruster](https://github.com/basecamp/thruster) on port 80):

```sh
docker build -t art_eecs .
docker run -d -p 80:80 -e RAILS_MASTER_KEY=<value from config/master.key> --name art_eecs art_eecs
```

The entrypoint runs `db:prepare` automatically when starting the server.
