backend = Refile::Backend::FileSystem.new("public/uploads/")

# see http://www.rubydoc.info/github/elabs/refile/Refile.cache%3D

Refile.cache = Refile::Backend::FileSystem.new("public/uploads/cache")
Refile.store = Refile::Backend::FileSystem.new("public/uploads/store")