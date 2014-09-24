node.default[:elasticsearch][:plugin][:mandatory] = Array(node[:elasticsearch][:plugin][:mandatory] | ['cloud-aws'])

install_plugin "elasticsearch/marvel/#{node.elasticsearch['plugins']['elasticsearch/marvel']['version']}"
