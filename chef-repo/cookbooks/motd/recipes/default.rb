#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
template "/etc/motd" do
  source "motd.erb"
  mode "0644"
  owner "root"
  group "root"
end
