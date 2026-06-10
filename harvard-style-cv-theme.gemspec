# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name     = "harvard-style-cv-theme"
  spec.version  = File.read(File.expand_path("VERSION", __dir__)).strip
  spec.authors  = ["Maksim Smirnov", "sengine-cloud"]
  spec.email    = ["engineering@sengine.cloud"]

  spec.summary  = "A clean, print-friendly Harvard-style CV/résumé theme for Jekyll."
  spec.homepage = "https://github.com/sengine-cloud/harvard-style-cv-theme"
  spec.license  = "MIT"

  # Only ship the consumable theme surface (layouts/includes/sass/assets) plus
  # the meta files. Demo pages (index.md, 404.html, about.markdown), _config.yml
  # and _data are intentionally excluded so they don't leak into consuming sites.
  # Screenshots under assets/ are excluded so they aren't copied into consumers.
  spec.files = (
    Dir.glob("{_layouts,_includes,_sass}/**/*") +
    Dir.glob("assets/**/*").reject { |f| f.include?("screenshot") } +
    %w[LICENSE README.md VERSION]
  ).select { |f| File.file?(f) }

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
end
