gem "rack-rewrite"

require "rack/rewrite"

use Rack::Rewrite do
  rewrite %r{^/$}, 'index.html'
  rewrite %r{^([-_\w\d/]+)$}, '$1.html'
end

use Rack::Static, urls: [""], root: "_site", index: "index.html"

run ->(env) { insignificant_response }

def insignificant_response
  @insignificant_response ||= [
    200, # Everything's okay,
    {},  # without a header at all.
    [""] # This is a haiku!
  ]
end
