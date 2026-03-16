require File.expand_path(File.dirname(__FILE__) + '/../../../test/test_helper')
require File.expand_path('../fixtures_helper', __FILE__)
require File.expand_path('../methods_helper', __FILE__)
require File.expand_path('../../init', __FILE__)
require 'computed_custom_field/custom_field_patch'
require 'computed_custom_field/custom_fields_helper_patch'
require 'computed_custom_field/issue_patch'
require 'computed_custom_field/model_patch'

ComputedCustomField.patch_models

class ComputedCustomFieldTestCase < ActiveSupport::TestCase
  fixtures FixturesHelper.fixtures
  include MethodsHelper
end

UI_TEST_CASE_CLASS = if Rails::VERSION::MAJOR >= 5
                       require File.expand_path(File.dirname(__FILE__) + '/../../../test/application_system_test_case')
                       ApplicationSystemTestCase
                     else
                       require File.expand_path(File.dirname(__FILE__) + '/../../../test/ui/base')
                       Redmine::UiTest::Base
                     end
