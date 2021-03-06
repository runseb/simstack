#
# Author::Sean Carey (<densone@basho.com>), Seth Thomas (<sthomas@basho.com>)
# Cookbook Name:: riak_cs
#
# Copyright (c) 2013 Basho Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

name              "riak-cs"
maintainer        "Basho Technologies, Inc."
maintainer_email  "riak@basho.com"
license           "Apache 2.0"
description       "Installs and configures Riak CS"
version           "2.2.4"
recipe            "riak-cs", "Installs and configures Riak CS"
recipe            "package", "Installs Riak CS"
recipe            "enterprise_package", "Installs Riak CS Enterprise"
recipe            "stanchion", "Installs Stanchion"
recipe            "control", "Installs Riak CS Control"

%w{ulimit}.each do |d|
  depends d
end

%w{ubuntu debian redhat centos scientific oracle amazon}.each do |os|
  supports os
end
