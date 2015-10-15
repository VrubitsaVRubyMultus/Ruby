module MyAttrAccessor
  def attr_accessor_with_history(*names)
    names.each do |name|
      sym_name = "@#{name}".to_sym
      define_method(name) { instance_variable_get(sym_name) }
      define_method("#{name}=") do |value| 
        instance_variable_set(sym_name, value)
      end
    end
    define_method("#{name}=") do |value|
        history = instance_variable_get("@#{name}_history")
        instance_variable_set("@#{name}_history", []) unless history 
        current_val = instance_variable_get(var_name)
        history = instance_variable_get("@#{name}_history")
        history << current_val
        instance_variable_set(var_name, value)
      end
    # @history = history
    # @history = []
    # @history << names
  end
end
class Foo
	extend MyAttrAccessor
	attr_accessor_with_history :bar, :barr
end
