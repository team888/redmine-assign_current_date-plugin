# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
module AssignCurrentDate
  class Hooks < Redmine::Hook::ViewListener

    # redmine view hook which called at creation of new Issue ticket window
    # http://www.redmine.org/projects/redmine/wiki/Hooks_List
    def view_issues_new_top(context={})
      issue = context[:issue]
      cf_name1 = Setting.plugin_assign_current_date['cf_name']
      cv = object_custom_field(issue, cf_name1)
      cv.value = Date.today if cv
      return nil
    end

    # Get custom field object based on specified object and custom filed name
    # Params*
    # +object+:: object which has target custom field such as Issue
    # +cf_name+:: custom field name
    def object_custom_field(object, cf_name)
      # normal way described at http://redmine.jp/tech_note/plugins/developer/quickref/get-custom-value/
      cv = object.custom_field_values.detect {|c| c.custom_field.name == cf_name}
      return cv
    end
  end
end