#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe 'chef-client::default'

package 'telnet'
package 'httpd'
package 'tree'
