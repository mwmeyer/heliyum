# Heliyum

A minimalist blog built with Rails 8, optimized for Fly.io deployment.

## Quick Start

```bash
# Setup
git clone https://github.com/mwmeyer/heliyum.git
cd heliyum
bundle install
bin/rails db:prepare

# Run locally
bin/rails server

# Deploy
fly launch
fly deploy
```

## Admin Access

- URL: http://localhost:3000
- Username: `admin`
- Password: `password`

## Tech Stack

- Rails 8
- SQLite
- Tailwind CSS
- Docker + Fly.io

## License

MIT