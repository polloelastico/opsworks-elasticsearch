node.default[:elasticsearch][:plugin][:mandatory] = Array(node[:elasticsearch][:plugin][:mandatory] | ['cloud-aws'])

install_plugin "marvel-agent"
