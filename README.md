# Heliyum - A Deliciously Lightweight Blog

[![Deploy to Fly.io](https://fly.io/buttons/deploy.svg)](https://fly.io/launch/github?owner=octocat&repo=hello-fly)

Heliyum is a modern, airy blogging platform built with Rails 8 and designed to be as lightweight as its namesake. Perfect for deploying on Fly.io, this ultra-minimal blog application offers a beautiful reading and writing experience with zero configuration.

## 🎈 Features

- **Ultra-Lightweight Design** - Airy UI with floating animations and a sky-blue theme
- **Minimal Admin Access** - HTTP Basic Authentication with a single token
- **Simple Commenting** - Comment with just a username (no approval needed)
- **Responsive Design** - Beautiful on any device with Tailwind CSS
- **Deploy-Ready** - Configured for easy deployment on Fly.io

## 🚀 Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/mwmeyer/heliyum.git
   cd heliyum
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Setup the database**
   ```bash
   bin/rails db:prepare
   ```

4. **Start the server**
   ```bash
   bin/rails server
   ```

5. **Visit in your browser**
   - Open [http://localhost:3000](http://localhost:3000)
   - Admin credentials: username `admin`, password `password`

## 🌐 Deployment

Heliyum is ready to deploy on Fly.io:

```bash
fly launch
fly deploy
```

## 📸 Screenshots

![Heliyum Blog](screenshots/heliyum.png)

## 🛠️ Technology Stack

- **Framework**: Rails 8
- **Database**: SQLite (perfect for small to medium blogs)
- **Frontend**: Tailwind CSS via CDN
- **Deployment**: Docker + Fly.io
- **Authentication**: Simple HTTP Basic Auth

## 📄 License

This project is available as open source under the terms of the MIT License.

---

Heliyum - float your ideas with ultimate simplicity
