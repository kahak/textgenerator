
script 'run_experiment' do
  cwd "/tmp"
  user node['textgenerator']['user']
  group node['textgenerator']['group']
  interpreter "bash"
  code <<-EOM
base64 /dev/urandom | head -c 128000000 > /tmp/input.txt

/srv/hadoop/bin/hdfs dfs -mkdir -p /words

/srv/hadoop/bin/hdfs dfs -copyFromLocal /tmp/input.txt /words/#{node.name}
  EOM
end

