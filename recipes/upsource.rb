#
# Cookbook Name:: cookbook_upsource
# Recipe:: upsource
#

# Decipher the locations
archive_directory = Chef::Config[:file_cache_path]
upsource_version = node['cookbook_upsource']['upsource']['version']
install_root_dir = node['cookbook_upsource']['upsource']['install_root_dir']
data_directory = node['cookbook_upsource']['upsource']['data_dir']
backup_directory = node['cookbook_upsource']['upsource']['backup_dir']
download_url = node['cookbook_upsource']['upsource']['download_url']

# Calculate some variables
upsource_archive_name = "Upsource-#{upsource_version}.zip"
upsource_archive_path = "#{archive_directory}/#{upsource_archive_name}"
install_dir = "#{install_root_dir}/#{upsource_version}"
current_dir = "#{install_root_dir}/current"

# Install the unzip package
package "unzip" do
  action :install
end

# Create the upsource root directory
directory install_root_dir do
  recursive true
  action :create
end

# Create the upsource version directory
directory install_dir do
  recursive true
  action :create
end

# Set the symbolic link to the current installation
link current_dir do
  to install_dir
end

# Create the data directory
directory data_directory do
  recursive true
  action :create
end

# Create the backup directory
directory backup_directory do
  recursive true
  action :create
end

# Download the version of upsource, if we don't already have it
remote_file upsource_archive_path do
  backup false
  source download_url
  action :create_if_missing
  notifies :run, "bash[extract-upsource]", :immediately
end

# Run the commands to extract and move upsource into place.
bash "extract-upsource" do
  code <<-EOH
    unzip #{upsource_archive_path} -d #{install_dir}
  EOH
  action :nothing
end