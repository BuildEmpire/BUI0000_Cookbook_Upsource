#
# Cookbook Name:: cookbook_upsource
# Recipe:: service
#

# Decipher the locations
archive_directory = Chef::Config[:file_cache_path]
upsource_version = node['cookbook_upsource']['upsource']['version']
install_root_dir = node['cookbook_upsource']['upsource']['install_root_dir']
data_directory = node['cookbook_upsource']['upsource']['data_dir']
backup_directory = node['cookbook_upsource']['upsource']['backup_dir']
memory_options = node['cookbook_upsource']['upsource']['memory_options']

# Calculate some variables
install_dir = "#{install_root_dir}/#{upsource_version}"
shell_script_path = "#{install_dir}/bin/upsource.sh"

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