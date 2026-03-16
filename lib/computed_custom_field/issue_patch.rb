module ComputedCustomField
  module IssuePatch
    def read_only_attribute_names(*args)
      cf_ids = CustomField.where(is_computed: true).pluck(:id).map(&:to_s)
      (super(*args) + cf_ids).uniq
    end
  end
end

unless Issue.included_modules.include?(ComputedCustomField::IssuePatch)
  Issue.prepend ComputedCustomField::IssuePatch
end
