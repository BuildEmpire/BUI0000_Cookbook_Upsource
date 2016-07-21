#
# Cookbook Name:: cookbook_upsource
# Recipe:: service
#

# Decipher the locations
memory_options = node['cookbook_upsource']['upsource']['memory_options']
shell_script_path = node['cookbook_upsource']['upsource']['shell_script_path']

# Create Upsource Service
template '/etc/init/upsource.conf' do
  source 'upsource.conf.erb'
  variables(
    :memory_options => memory_options,
    :shell_script_path => shell_script_path
  )
  notifies :start, 'service[upsource]', :immediately
end

# Start Upsource Service
service "upsource" do
  provider Chef::Provider::Service::Upstart
  action :restart
end