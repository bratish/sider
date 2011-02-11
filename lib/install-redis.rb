#
#REDIS_ROOT = "#{ENV['HOME']}/.redis"
#redis_github_repo = "git://github.com/antirez/redis.git"
## check if the ~/.redis dir present creare it directory if not present
#Dir.mkdir REDIS_ROOT unless File.directory? REDIS_ROOT
#
## change directory to ~/.redis
#Dir.chdir REDIS_ROOT
## clone redis git repo
#system("git clone #{redis_github_repo} .")
## check tags
#system("git tag -l '*stable'")
## checkout to the latest stable tag
#
## make
## tweak redis.conf file