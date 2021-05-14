#*******************************************************************************
# assign_current_date Redmine plugin.
#
# Authors:
# - https://github.com/team888
#
# Terms of use:
# - GNU GENERAL PUBLIC LICENSE Version 2
#*******************************************************************************

require "assign_current_date/hooks.rb"

Redmine::Plugin.register :assign_current_date do
  name 'Assign current date plugin'
  author 'team888'
  description 'Assign current date to specified custom field on new Issue ticket.'
  version '0.4.0'
  url 'https://github.com/team888/redmine-assign_current_date-plugin'
  author_url 'https://github.com/team888'
  
  settings :default => {'empty' => true}, :partial => 'settings/assign_current_date_settings'
end
