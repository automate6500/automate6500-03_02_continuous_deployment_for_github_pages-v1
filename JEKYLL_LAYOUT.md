# Complete Jekyll Theme Structure for Amazing API
# This shows the file structure and contents you need

# ==========================================
# FILE: _config.yml
# ==========================================
---
title: The Amazing API
description: The world's most amazing API with AmazingScript
baseurl: ""
url: ""

# Build settings
markdown: kramdown
theme: minima
plugins:
  - jekyll-feed

# Collections
collections:
  pages:
    output: true

# Defaults
defaults:
  - scope:
      path: ""
      type: "pages"
    values:
      layout: "page"

# Exclude from processing
exclude:
  - README.md
  - Gemfile
  - Gemfile.lock

# ==========================================
# FILE: _layouts/default.html
# ==========================================
---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ page.title }} | {{ site.title }}</title>
    <link rel="stylesheet" href="{{ '/assets/css/style.css' | relative_url }}">
</head>
<body>
    <header class="site-header">
        <div class="container">
            <div class="header-content">
                <a href="{{ '/' | relative_url }}" class="logo">
                    <div class="logo-icon">🚀</div>
                    <span class="logo-text">Amazing API</span>
                </a>
                <nav class="main-nav">
                    <button class="mobile-menu-toggle" id="mobile-menu-toggle">☰</button>
                    <ul class="nav-list" id="nav-list">
                        <li><a href="{{ '/' | relative_url }}" {% if page.url == '/' %}class="active"{% endif %}>Home</a></li>
                        <li><a href="{{ '/OUR_TECH_STORY' | relative_url }}" {% if page.url contains 'OUR_TECH_STORY' %}class="active"{% endif %}>Our Tech Story</a></li>
                        <li><a href="{{ '/USING_THE_API' | relative_url }}" {% if page.url contains 'USING_THE_API' %}class="active"{% endif %}>Using the API</a></li>
                        <li><a href="{{ '/MEET_THE_TEAM' | relative_url }}" {% if page.url contains 'MEET_THE_TEAM' %}class="active"{% endif %}>Meet the Team</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main class="site-content">
        <div class="container">
            {{ content }}
        </div>
    </main>

    <footer class="site-footer">
        <div class="container">
            <p>&copy; 2024 The Amazing API. Built with AmazingScript.</p>
            <nav class="footer-nav">
                <a href="{{ '/' | relative_url }}">Home</a>
                <a href="{{ '/OUR_TECH_STORY' | relative_url }}">Our Tech Story</a>
                <a href="{{ '/USING_THE_API' | relative_url }}">Using the API</a>
                <a href="{{ '/MEET_THE_TEAM' | relative_url }}">Meet the Team</a>
            </nav>
        </div>
    </footer>

    <script src="{{ '/assets/js/main.js' | relative_url }}"></script>
</body>
</html>

# ==========================================
# FILE: _layouts/page.html
# ==========================================
---
layout: default
---
<article class="page-content">
    {{ content }}
</article>

# ==========================================
# FILE: assets/css/style.css
# ==========================================
---
/* Reset and Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --primary-green: #228B22;
    --primary-blue: #5F9EA0;
    --accent-green: #8FBC8F;
    --accent-olive: #3A5F0B;
    --text-dark: #2d3748;
    --text-light: #4a5568;
    --bg-light: #f7fafc;
    --white: #ffffff;
    --border: #e2e8f0;
    --shadow: 0 1px 3px rgba(0,0,0,0.1);
    --shadow-lg: 0 10px 25px rgba(0,0,0,0.1);
}

body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
    line-height: 1.6;
    color: var(--text-dark);
    background: var(--bg-light);
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
}

/* Header Styles */
.site-header {
    background: var(--white);
    box-shadow: var(--shadow);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.header-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 0;
}

.logo {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    text-decoration: none;
    color: var(--text-dark);
}

.logo-icon {
    width: 40px;
    height: 40px;
    background: linear-gradient(135deg, var(--primary-green), var(--primary-blue));
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.5rem;
}

.logo-text {
    font-size: 1.25rem;
    font-weight: 700;
    background: linear-gradient(135deg, var(--primary-green), var(--primary-blue));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}

/* Navigation */
.mobile-menu-toggle {
    display: none;
    background: none;
    border: none;
    font-size: 1.5rem;
    cursor: pointer;
    padding: 0.5rem;
}

.nav-list {
    display: flex;
    list-style: none;
    gap: 0.5rem;
}

.nav-list li a {
    display: block;
    padding: 0.5rem 1rem;
    text-decoration: none;
    color: var(--text-light);
    border-radius: 6px;
    transition: all 0.2s;
}

.nav-list li a:hover,
.nav-list li a.active {
    background: #f0fdf4;
    color: var(--primary-green);
}

/* Main Content */
.site-content {
    padding: 3rem 0;
    min-height: calc(100vh - 200px);
}

/* Homepage Specific Styles */
h1 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.hero-section {
    text-align: center;
    padding: 4rem 2rem;
    background: linear-gradient(135deg, #f0fdf4 0%, #dbeafe 100%);
    border-radius: 16px;
    margin-bottom: 3rem;
}

.hero-section h1 {
    font-size: 3rem;
    background: linear-gradient(135deg, var(--primary-green), var(--primary-blue));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    margin-bottom: 0.5rem;
}

.hero-section .subtitle {
    font-size: 1.25rem;
    color: var(--text-light);
    margin-bottom: 1.5rem;
}

/* Card Grid */
.card-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    margin: 3rem 0;
}

.card {
    background: var(--white);
    padding: 2rem;
    border-radius: 12px;
    box-shadow: var(--shadow);
    border: 1px solid var(--border);
    transition: all 0.3s;
    text-decoration: none;
    color: inherit;
    display: block;
}

.card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-lg);
}

.card-icon {
    width: 60px;
    height: 60px;
    background: linear-gradient(135deg, var(--accent-green), var(--primary-blue));
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    margin-bottom: 1rem;
}

.card h2 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.card p {
    color: var(--text-light);
    line-height: 1.6;
}

/* Page Content Styles */
.page-content {
    background: var(--white);
    padding: 3rem;
    border-radius: 12px;
    box-shadow: var(--shadow);
}

.page-content h1 {
    text-align: center;
    padding: 3rem 2rem;
    background: linear-gradient(135deg, #f0fdf4 0%, #dbeafe 100%);
    border-radius: 12px;
    margin: -3rem -3rem 2rem -3rem;
}

.page-content h2 {
    font-size: 1.75rem;
    margin-top: 2rem;
    margin-bottom: 1rem;
    color: var(--text-dark);
}

.page-content h3 {
    font-size: 1.25rem;
    margin-top: 1.5rem;
    margin-bottom: 0.75rem;
    color: var(--text-dark);
}

.page-content p {
    margin-bottom: 1rem;
    color: var(--text-light);
    line-height: 1.8;
}

.page-content img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    margin: 1.5rem 0;
}

/* Code Blocks */
.page-content pre {
    background: #1a202c;
    color: #48bb78;
    padding: 1.5rem;
    border-radius: 8px;
    overflow-x: auto;
    margin: 1.5rem 0;
    font-size: 0.875rem;
    line-height: 1.6;
}

.page-content code {
    background: #f7fafc;
    padding: 0.2rem 0.4rem;
    border-radius: 4px;
    font-size: 0.875rem;
    color: #e53e3e;
}

.page-content pre code {
    background: none;
    padding: 0;
    color: #48bb78;
}

/* Team Member Grid */
.team-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
    margin: 2rem 0;
}

.team-member {
    background: var(--white);
    padding: 2rem;
    border-radius: 12px;
    box-shadow: var(--shadow);
    border: 1px solid var(--border);
}

.team-avatar {
    width: 80px;
    height: 80px;
    background: linear-gradient(135deg, #bfdbfe, #93c5fd);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 2rem;
    font-weight: bold;
    color: var(--primary-blue);
    margin-bottom: 1rem;
}

.team-member h2 {
    font-size: 1.5rem;
    margin-top: 0;
    margin-bottom: 0.5rem;
}

.team-member .role {
    color: var(--primary-blue);
    font-weight: 600;
    margin-bottom: 1rem;
}

/* Footer */
.site-footer {
    background: var(--white);
    border-top: 1px solid var(--border);
    padding: 2rem 0;
    margin-top: 4rem;
}

.site-footer .container {
    text-align: center;
}

.site-footer p {
    margin-bottom: 1rem;
    color: var(--text-light);
}

.footer-nav {
    display: flex;
    justify-content: center;
    gap: 2rem;
    flex-wrap: wrap;
}

.footer-nav a {
    color: var(--primary-blue);
    text-decoration: none;
    transition: color 0.2s;
}

.footer-nav a:hover {
    color: var(--primary-green);
}

/* Responsive Design */
@media (max-width: 768px) {
    .mobile-menu-toggle {
        display: block;
    }

    .nav-list {
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        right: 0;
        background: var(--white);
        flex-direction: column;
        padding: 1rem;
        box-shadow: var(--shadow);
    }

    .nav-list.active {
        display: flex;
    }

    .hero-section h1 {
        font-size: 2rem;
    }

    .page-content {
        padding: 2rem 1.5rem;
    }

    .page-content h1 {
        margin: -2rem -1.5rem 2rem -1.5rem;
        padding: 2rem 1rem;
        font-size: 2rem;
    }

    .card-grid {
        grid-template-columns: 1fr;
    }
}

# ==========================================
# FILE: assets/js/main.js
# ==========================================
---
// Mobile menu toggle
document.addEventListener('DOMContentLoaded', function() {
    const toggle = document.getElementById('mobile-menu-toggle');
    const navList = document.getElementById('nav-list');
    
    if (toggle) {
        toggle.addEventListener('click', function() {
            navList.classList.toggle('active');
        });
    }
});

# ==========================================
# FILE: Gemfile
# ==========================================
---
source "https://rubygems.org"

gem "jekyll", "~> 4.3"
gem "minima"

group :jekyll_plugins do
  gem "jekyll-feed"
end

# ==========================================
# UPDATED: INDEX.md (with card structure)
# ==========================================
---
layout: page
title: The Amazing API
permalink: /
---

<div class="hero-section">
  <h1>THE AMAZING API</h1>
  <p class="subtitle">(now with AmazingScript!!)</p>
  <p>Welcome to our website for the world's most amazing API! Here you can find information about the technology behind the API, instructions on how to use it, and meet our team.</p>
</div>

<div class="card-grid">
  <a href="{{ '/OUR_TECH_STORY' | relative_url }}" class="card">
    <div class="card-icon">📖</div>
    <h2>Our Tech Story</h2>
    <p>Our team has worked hard to create an innovative solution that will change the way you think about code, APIs, and the entire world.</p>
  </a>

  <a href="{{ '/USING_THE_API' | relative_url }}" class="card">
    <div class="card-icon">💻</div>
    <h2>Using the API</h2>
    <p>We've created an easy-to-follow guide that will help you get started with using our API. Whether you're a seasoned developer or new to programming, our instructions will have you up and running in an amazingly short time.</p>
  </a>

  <a href="{{ '/MEET_THE_TEAM' | relative_url }}" class="card">
    <div class="card-icon">👥</div>
    <h2>Meet the Team</h2>
    <p>Our team is made up of four talented individuals who have worked tirelessly to create this amazing API. Get to know them by reading their bios below.</p>
  </a>
</div>

# ==========================================
# UPDATED: MEET_THE_TEAM.md (with styling)
# ==========================================
---
layout: page
title: Meet The Team
permalink: /MEET_THE_TEAM
---

# MEET THE TEAM

<div class="team-grid">
  <div class="team-member">
    <div class="team-avatar">JD</div>
    <h2>John Doe</h2>
    <p class="role">Software Engineer</p>
    <p>John is a software engineer with over 10 years of experience in the field. He has worked on several successful projects and enjoys hiking and playing tennis in his free time.</p>
  </div>

  <div class="team-member">
    <div class="team-avatar">JS</div>
    <h2>Jane Smith</h2>
    <p class="role">Data Scientist & Frontend Developer</p>
    <p>Jane has a background in data science with expertise in machine learning and AI. She is also a frontend developer with a passion for design. She loves to create beautiful and intuitive user interfaces and has won several awards for her work.</p>
  </div>

  <div class="team-member">
    <div class="team-avatar">BJ</div>
    <h2>Bob Johnson</h2>
    <p class="role">Data Scientist & UI/UX Designer</p>
    <p>Bob is a data scientist with a PhD in statistics. He finds joy in creating wonderful interfaces that provide amazing UI/UX. He enjoys working on complex problems and has published several papers in top-tier journals.</p>
  </div>

  <div class="team-member">
    <div class="team-avatar">AL</div>
    <h2>Alice Lee</h2>
    <p class="role">Product Manager</p>
    <p>Alice has a background in networks, security, cloud infrastructure, and business. She serves as the Amazing API product manager and loves to build products that solve real-world problems.</p>
  </div>
</div>

[Back to main page]({{ '/' | relative_url }}) | [Our Tech Story]({{ '/OUR_TECH_STORY' | relative_url }}) | [Using the API]({{ '/USING_THE_API' | relative_url }})

# ==========================================
# INSTALLATION INSTRUCTIONS
# ==========================================

# 1. Create the following directory structure:
#    your-site/
#    ├── _config.yml
#    ├── _layouts/
#    │   ├── default.html
#    │   └── page.html
#    ├── assets/
#    │   ├── css/
#    │   │   └── style.css
#    │   └── js/
#    │       └── main.js
#    ├── Gemfile
#    ├── INDEX.md
#    ├── MEET_THE_TEAM.md
#    ├── OUR_TECH_STORY.md
#    └── USING_THE_API.md

# 2. Run these commands:
#    bundle install
#    bundle exec jekyll serve

# 3. Visit http://localhost:4000 in your browser

# Note: Your existing markdown files (MEET_THE_TEAM.md, OUR_TECH_STORY.md, 
# USING_THE_API.md) will work as-is with the page layout. I've shown updated 
# versions for INDEX.md and MEET_THE_TEAM.md that use custom HTML for better 
# styling, but the original markdown will still render fine.