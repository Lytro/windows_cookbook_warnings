# windows_cookbook_warnings

## What happens:
1. runner.converge is called before the first test and everything is fine.
2. runner.converge is called before the second test and a shit-ton of warnings are spit out by Ruby because constants are being redefined.

## Steps to reproduce the warnings:
```bash
$ git clone git://github.com/Lytro/windows_cookbook_warnings.git
$ cd windows_cookbook_warnings
$ bundle install
$ bundle exec librarian-chef install
$ bundle exec rspec
Compiling Cookbooks...
.Compiling Cookbooks...
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/helper.rb:24: warning: already initialized constant AUTO_RUN_KEY
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/helper.rb:25: warning: already initialized constant ENV_KEY
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:33: warning: already initialized constant VER_SUITE_BACKOFFICE
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:35: warning: already initialized constant VER_SUITE_BLADE
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:37: warning: already initialized constant VER_SUITE_COMPUTE_SERVER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:39: warning: already initialized constant VER_SUITE_DATACENTER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:41: warning: already initialized constant VER_SUITE_ENTERPRISE
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:43: warning: already initialized constant VER_SUITE_EMBEDDEDNT
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:45: warning: already initialized constant VER_SUITE_PERSONAL
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:47: warning: already initialized constant VER_SUITE_SINGLEUSERTS
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:49: warning: already initialized constant VER_SUITE_SMALLBUSINESS
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:51: warning: already initialized constant VER_SUITE_SMALLBUSINESS_RESTRICTED
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:53: warning: already initialized constant VER_SUITE_STORAGE_SERVER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:56: warning: already initialized constant VER_SUITE_TERMINAL
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:58: warning: already initialized constant VER_SUITE_WH_SERVER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:62: warning: already initialized constant VER_NT_DOMAIN_CONTROLLER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:65: warning: already initialized constant VER_NT_SERVER
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:67: warning: already initialized constant VER_NT_WORKSTATION
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:71: warning: already initialized constant SM_SERVERR2
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:75: warning: already initialized constant SKU
some_path/windows_cookbook_warnings/cookbooks/windows/libraries/version.rb:142: warning: already initialized constant WIN_VERSIONS
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant ChefHandler
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant ChefHandler
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsAutoRun
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsBatch
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsFeatureDism
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsFeatureServermanagercmd
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsPackage
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsPagefile
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsPath
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsPrinter
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsPrinterPort
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsReboot
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsRegistry
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsShortcut
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsTask
gems_root/chef-11.4.0/lib/chef/provider/lwrp_base.rb:97: warning: already initialized constant WindowsZipfile
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsAutoRun
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsBatch
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsFeature
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsPackage
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsPagefile
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsPath
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsPrinter
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsPrinterPort
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsReboot
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsRegistry
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsShortcut
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsTask
gems_root/chef-11.4.0/lib/chef/resource/lwrp_base.rb:51: warning: already initialized constant WindowsZipfile
.

Finished in 0.07493 seconds
2 examples, 0 failures
```
