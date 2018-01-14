default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['oracle']['accept_oracle_download_terms'] = true

default['cookbook_upsource']['upsource']['version'] = '2017.3.2645'
default['cookbook_upsource']['upsource']['install_root_dir'] = '/opt/upsource'
default['cookbook_upsource']['upsource']['data_dir'] = '/root/.UpsourceData'
default['cookbook_upsource']['upsource']['backup_dir'] = '/root/.UpsourceBackup'
default['cookbook_upsource']['upsource']['download_url'] = 'https://download.jetbrains.com/upsource/upsource-2017.3.2645.zip'
default['cookbook_upsource']['upsource']['memory_options'] = '-Xmx1g'
default['cookbook_upsource']['upsource']['shell_script_path'] = '/opt/upsource/2017.3.2645/upsource-2017.3.2645/bin/upsource.sh'