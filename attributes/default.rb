#
# Cookbook:: managed-chef-server
# Attributes:: default
#
# Copyright:: 2018, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# default recipe
# set location of backup file to restore from
default['mcs']['restore']['file'] = ''
# user and organization for Chef-managed server
default['mcs']['org']['name'] = 'chef_managed_org'
default['mcs']['org']['full_name'] = 'Chef Managed Organization'
default['mcs']['managed_user']['dir'] = '/etc/opscode/managed'
default['mcs']['managed_user']['user_name'] = 'chef_managed_user'
default['mcs']['managed_user']['first_name'] = 'Chef'
default['mcs']['managed_user']['last_name'] = 'Managed'
default['mcs']['managed_user']['email'] = 'you@example.com'
default['mcs']['managed_user']['password'] = nil

# backup recipe
# schedule via cron
default['mcs']['backup']['cron']['minute'] = '30'
default['mcs']['backup']['cron']['hour'] = '2'
default['mcs']['backup']['cron']['day'] = '*'
default['mcs']['backup']['dir'] = Chef::Config[:file_cache_path] + '/mcs-backups'
# this will have the timestamp added
default['mcs']['backup']['prefix'] = 'chef-server-backup-'

# cron recipe
default['mcs']['cron']['minute'] = '*/30'
default['mcs']['cron']['hour'] = '*'
default['mcs']['cron']['day'] = '*'
default['mcs']['cron']['options'] = []
default['mcs']['cron']['policyfile_archive'] = nil
default['mcs']['cron']['zero_dir'] = Chef::Config[:file_cache_path] + '/mcs-cron'

# data_bag_loader recipe
default['mcs']['data_bags']['dir'] = nil
default['mcs']['data_bags']['prune'] = false

# ChefDK attributes cargo-culted for compatibility
default['chefdk']['channel'] = :stable
default['chefdk']['version'] = 'latest'
default['chefdk']['package_source'] = nil

# legacy_loader recipe
default['mcs']['cookbooks']['dir'] = nil
default['mcs']['environments']['dir'] = nil
default['mcs']['roles']['dir'] = nil

# policyfile_loader recipe
default['mcs']['policyfile']['dir'] = nil
default['mcs']['policyfile']['group'] = '_default'
default['mcs']['policyfile']['lockfiletype'] = '.lock.json'
default['mcs']['policyfile']['purge'] = false

# added to allow skipping chef-server-ctl test for already deployed systems
default['mcs']['skip_test'] = false

# _tuning recipe
# if you want to configure the settings in the _tuning recipe you may set these
# please refer to the recipe source for explanations and documentation links
default['mcs']['opscode_solr4']['heap_size'] = nil
