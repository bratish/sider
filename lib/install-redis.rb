class InstallRedis
  def install
# Check if Git is present in the system
op = %x[git --version]
if %x[echo $?].chomp == '0'
  puts "Found Git in the system... Will be using it to install Redis"
elsif
  puts "Probably Git is not installed in your machine. I need Git to install Redis. Please install and retry."
  exit
end

#REDIS_ROOT = "#{ENV['HOME']}/.redis"
redis_github_repo = "git://github.com/antirez/redis.git"
# check if the ~/.redis dir present creare it directory if not present
Dir.mkdir REDIS_ROOT unless File.directory? REDIS_ROOT
# change directory to ~/.redis
Dir.chdir REDIS_ROOT
# clone redis git repo
op = %x[git clone #{redis_github_repo} .]
if %x[echo $?].chomp== '0'
  puts "successfully cloned the Redis repository."
else
  puts "Clonning failed. Quitting..."
  exit(2)
end
# checkout to the latest stable tag
op = %x[git checkout -b stable 2.2.7]
if %x[echo $?].chomp == '0'
  puts "successfully checked out to latest stable branch."
else
  puts "Problem in checking out to the latest tagged version.\n Using current unstable instead."
end
puts "Starting installation..."
# make
op = %x[make]
if %x[echo $?].chomp == '0'
  puts "Successfully installed..."
else
  puts "Installation failed."
  exit(2)
end

# tweak redis.conf file
end
end
