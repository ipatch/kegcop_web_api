backend = Refile::Backend::FileSystem.new("public/uploads/")

# see http://www.rubydoc.info/github/elabs/refile/Refile.cache%3D

Refile.cache = (backend)
Refile.store = (backend)