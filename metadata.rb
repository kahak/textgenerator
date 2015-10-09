name             'textgenerator'
maintainer       "textgenerator"
maintainer_email "k.hakimzadeh@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs textgenerator'
version          "0.1"

recipe            "textgenerator::install", "Experiment setup for textgenerator"
recipe            "textgenerator::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "textgenerator/group",
:description => "group parameter value",
:type => "string"

attribute "textgenerator/user",
:description => "user parameter value",
:type => "string"


