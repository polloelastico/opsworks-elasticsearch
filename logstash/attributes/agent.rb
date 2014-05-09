default['logstash']['agent']['version'] = '1.2.1'
default['logstash']['agent']['source_url'] = 'http://logstash.objects.dreamhost.com/release/logstash-1.2.1-flatjar.jar'
default['logstash']['agent']['checksum'] = 'd0b8a56fb1aa71d54c2bab71709d900b359fdf8c6d7d6ff15578423a0d86ee23'
default['logstash']['agent']['install_method'] = 'jar' # Either `source` or `jar`
default['logstash']['agent']['patterns_dir'] = 'agent/etc/patterns'
default['logstash']['agent']['base_config'] = 'agent.conf.erb'
default['logstash']['agent']['base_config_cookbook'] = 'logstash'
default['logstash']['agent']['xms'] = '384M'
default['logstash']['agent']['xmx'] = '384M'
default['logstash']['agent']['java_opts'] = ''
default['logstash']['agent']['gc_opts'] = '-XX:+UseParallelOldGC'
default['logstash']['agent']['ipv4_only'] = false
default['logstash']['agent']['debug'] = false
# allow control over the upstart config
default['logstash']['agent']['upstart_with_sudo'] = false
default['logstash']['agent']['upstart_respawn_count'] = 5
default['logstash']['agent']['upstart_respawn_timeout'] = 30

default['logstash']['agent']['init_method'] = 'native' # native or runit

# logrotate options for logstash agent
default['logstash']['agent']['logrotate']['options'] = [ "missingok", "notifempty" ]
# stop/start on logrotate?
default['logstash']['agent']['logrotate']['stopstartprepost'] = false

# roles/flasgs for various autoconfig/discovery components
default['logstash']['agent']['server_role'] = 'logstash_server'

# for use in case recipe used w/ chef-solo, default to self
default['logstash']['agent']['server_ipaddress'] = ''

default['logstash']['agent']['inputs'] = []
default['logstash']['agent']['filters'] = []
default['logstash']['agent']['outputs'] = []
