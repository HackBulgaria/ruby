load "deploy"

default_run_options[:pty] = true

# As long as we don't push all the cat photos in this repo, we can be good. I
# like how I can slash and dice repos around with the copy strategy.
set :scm, :none
set :scm_verbose, true

set :deploy_via, :copy
set :copy_exclude, ".vagrant/*"

set :public_children, []

set :keep_releases, 5

set :application, "ruby"

set :user, "hack"
set :use_sudo, false

set :repository, "./_site"
set :deploy_to, "/hack/#{application}"

before "deploy:update_code" do
  run_locally "bundle exec jekyll build"
end

server ENV.fetch("server", "188.226.232.4"), :app, primary: true

namespace :deploy do
  task :finalize_update do
    # In a Rails deploy, this would create symlinks to the shared directory for
    # log, system, tmp and pids directories. We don't need those.
  end
end
