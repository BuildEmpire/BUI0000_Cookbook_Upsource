#
# Cookbook Name:: cookbook_upsource
# Recipe:: default
#

include_recipe 'java::default'
include_recipe 'cookbook_upsource::upsource'
include_recipe 'cookbook_upsource::service'
include_recipe 'cookbook_upsource::limits'