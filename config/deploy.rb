set :application, "ItInTheD"
set :repository,  "git@github.com:Compuware/ItInTheD.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "ec2-50-16-38-11.compute-1.amazonaws.com"                          # Your HTTP server, Apache/etc
role :app, "ec2-50-16-38-11.compute-1.amazonaws.com"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

set :deploy_to, "/home/ubuntu/"

set :user, "ubuntu"
default_run_options[:pty] = true
ssh_options[:keys] = ["#{ENV['HOME']}/Desktop/ItInTheD.pem"]

# set :deploy_via, :remote_cache
# set :repository_cache, "copy_of_your_checkout_instance"
# set :keep_releases, 3



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
