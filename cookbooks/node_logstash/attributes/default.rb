default[:node_logstash] = {
  :user => 'logstash',
  :groups => ['adm'],
  :directory => '/opt/logstash',
  :config_directory => '/etc/logstash.d',
  :git => 'git://github.com/bpaquet/node-logstash.git',
  :version => 'bb11ab763e488d95b3f47fffa7ab18caa486e8ca',
  :node_version => '0.8.16',
  :log_level => 'info',
  :patterns_directories => [],
}

default[:kibana] = {
  :user => 'kibana',
  :git => 'git://github.com/rashidkpc/Kibana.git',
  :version => '6354c16176696f7575bd3ba8b68188c34f87c7c0',
  :directory => '/opt/kibana',
  :location => '/',
  :config => {
    :result_per_page => 200,
    :timezone => 'user',
    :time_format => 'mm/dd HH:MM:ss',
    :analyze_limit => 10000,
    :default_operator => 'OR',
    :elasticsearch => 'localhost:9200',
  }
}