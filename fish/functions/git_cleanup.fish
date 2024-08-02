function git_cleanup --wraps='bash ~/git-cleanup.sh' --wraps='bash ~/andre-functions/git-cleanup.sh' --description 'alias git_cleanup=bash ~/andre-functions/git-cleanup.sh'
  bash ~/andre-functions/git-cleanup.sh $argv
        
end
