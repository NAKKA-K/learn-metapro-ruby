require "ghee"

gh = Ghee.basic_auth("usr", "pass") # GitHubのusername & pass
all_gists = gh.users("NAKKA-K").gists
a_gist = all_gists[0]

p a_gist["url"]
p a_gist["description"]
