#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

service "ntpd" do
  action [:start, :enable]
end

["ntp", "ntpdate"].each do |package_name|
  package package_name
end

template "/etc/ntp.conf" do
  notifies :restart, "service[ntpd]"
  source "ntp.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  action :create
end













# package "ntp" 
# 
# package "ntpdate"
#

