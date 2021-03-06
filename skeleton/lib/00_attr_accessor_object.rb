class AttrAccessorObject
  def self.my_attr_accessor(*names)
      names.each do |name|
        define_method(name) {return "value of @#{name}"}
        define_method("#{name}=") do |arg|
            self.instance_variable_set("@#{name}","#{arg}")
        end
      end

  end
end
