* Update version number and date in .gemspec
* Run bundler to update Gemfile.lock with any updated dependencies
* Push to master
* Ensure travis tests are passing
* Create and push a new tag for the release
* Run `gem build keybase-core.gemspec` and auth with pass phrase
* Ensure it installs with `gem install keybase-xxx.gem -P HighSecurity`
* Create a release in Github's tags and attach the .gem file to the release.
* Finally, run `rake release` to push the new version to RubyGems