default[:nexus][:location] = "/nexus"
default[:nexus][:version] = "2.0.4"
default[:nexus][:war_url] = "http://www.sonatype.org/downloads/nexus-#{default[:nexus][:version]}.war"
default[:nexus][:tomcat] = {
  :name => 'nexus',
  :env => {
    'JAVA_OPTS' => '-XX:MaxPermSize=256m -Xmx1024m -Xms256m',
  }
}