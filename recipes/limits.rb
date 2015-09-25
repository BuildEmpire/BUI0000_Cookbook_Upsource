#
# Cookbook Name:: cookbook_upsource
# Recipe:: limits
#

set_limit '*' do
  type '-'
  item 'memlock'
  value 'unlimited'
  use_system true
end

set_limit '*' do
  type '-'
  item 'nofile'
  value 100000
  use_system true
end

set_limit '*' do
  type '-'
  item 'nproc'
  value 32768
  use_system true
end

set_limit '*' do
  type '-'
  item 'as'
  value 'unlimited'
  use_system true
end