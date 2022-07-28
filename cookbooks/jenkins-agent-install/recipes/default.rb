#
# Cookbook:: jenkins-agent-install
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apt_update

package 'openjdk-8-jdk'

directory '/opt/jenkins' do
  owner 'ubuntu'
  group 'ubuntu'
  recursive true
end

package 'docker.io'

group 'docker' do
  members ['ubuntu']
end

