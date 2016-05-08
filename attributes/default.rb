default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['oracle']['accept_oracle_download_terms'] = true

default['cookbook_upsource']['upsource']['version'] = '3.0.4291'
default['cookbook_upsource']['upsource']['install_root_dir'] = '/opt/upsource'
default['cookbook_upsource']['upsource']['data_dir'] = '/root/.UpsourceData'
default['cookbook_upsource']['upsource']['backup_dir'] = '/root/.UpsourceBackup'
default['cookbook_upsource']['upsource']['download_url'] = 'https://download.jetbrains.com/upsource/upsource-3.0.4291.zip'
default['cookbook_upsource']['upsource']['memory_options'] = '-Xmx1g'