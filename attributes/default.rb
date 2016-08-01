default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['oracle']['accept_oracle_download_terms'] = true

default['cookbook_upsource']['upsource']['version'] = '3.0.4396'
default['cookbook_upsource']['upsource']['install_root_dir'] = '/opt/upsource'
default['cookbook_upsource']['upsource']['data_dir'] = '/root/.UpsourceData'
default['cookbook_upsource']['upsource']['backup_dir'] = '/root/.UpsourceBackup'
default['cookbook_upsource']['upsource']['download_url'] = 'https://download.jetbrains.com/upsource/upsource-3.0.4396.zip'
default['cookbook_upsource']['upsource']['memory_options'] = '-Xmx1g'
default['cookbook_upsource']['upsource']['shell_script_path'] = '/opt/upsource/3.0.4396/upsource-3.0.4396/bin/upsource.sh'