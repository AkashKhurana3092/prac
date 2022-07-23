#
# Cookbook:: jenkins-master
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apt_update

package node['java']['jdk'] do
  action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/jenkins.war" do
  source "https://get.jenkins.io/war-stable/#{node['jenkins']['version']}/jenkins.war"
  action :create
end

execute 'jenkins_command' do
  command "nohup java -jar #{Chef::Config[:file_cache_path]}/jenkins.war &"
end

execute 'show initial password' do
  command 'sudo cat /root/.jenkins/secrets/initialAdminPassword'
  live_stream true
#  action :run
end
