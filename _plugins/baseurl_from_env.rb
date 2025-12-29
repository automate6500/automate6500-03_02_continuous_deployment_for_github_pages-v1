# Jekyll plugin to set baseurl from environment variable
# This allows the site to work locally (with empty baseurl) and on GitHub Pages
# (with repository-specific baseurl set via JEKYLL_BASEURL environment variable)

module Jekyll
  class BaseurlFromEnvGenerator < Generator
    safe true
    priority :highest

    def generate(site)
      if ENV['JEKYLL_BASEURL']
        site.config['baseurl'] = ENV['JEKYLL_BASEURL']
        Jekyll.logger.info "BaseurlFromEnv:", "Set baseurl to #{ENV['JEKYLL_BASEURL']}"
      end
    end
  end
end

# Also register hooks as fallback
Jekyll::Hooks.register :site, :after_init do |site|
  if ENV['JEKYLL_BASEURL']
    site.config['baseurl'] = ENV['JEKYLL_BASEURL']
  end
end
