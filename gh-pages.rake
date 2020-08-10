desc "generate gh-pages"
task :gh_pages do
  `rake docs`
  
  `git branch` =~ /^\* (.+)?\n/
  current_branch = $1
  
  `git commit -am "docs"`
  `git checkout gh-pages`
  `git merge #{current_branch}`
  `git push github gh-pages`
  `git checkout #{current_branch}`
end
