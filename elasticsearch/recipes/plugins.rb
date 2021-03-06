directory "#{node.elasticsearch[:dir]}/elasticsearch-#{node.elasticsearch[:version]}/plugins/" do
  owner node.elasticsearch[:user]
  group node.elasticsearch[:user]
  mode 0755
  recursive true
end

node[:elasticsearch][:plugins].each do | name, config |
  next if name == 'cloud-aws' && !node.recipe?('aws')
  install_plugin name, config
end
