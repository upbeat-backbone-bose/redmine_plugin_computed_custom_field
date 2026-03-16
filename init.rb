Redmine::Plugin.register :computed_custom_field do
  name 'Computed custom field'
  author 'Yakov Annikov'
  url 'https://github.com/annikoff/redmine_plugin_computed_custom_field'
  description ''
  version '1.0.7'
  settings default: {}
end

$LOAD_PATH.unshift "#{File.dirname(__FILE__)}/lib"

require_dependency 'computed_custom_field'
require_dependency 'computed_custom_field/custom_field_patch'
require_dependency 'computed_custom_field/custom_fields_helper_patch'
require_dependency 'computed_custom_field/issue_patch'
require_dependency 'computed_custom_field/model_patch'
require_dependency 'computed_custom_field/hooks'

Rails.application.config.to_prepare do
  ComputedCustomField.patch_models
end
