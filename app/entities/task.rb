require 'obvious'

class Task < Obvious::Entity

  value :text, String
  value :user_id, Fixnum
  value :id, Fixnum
    
	#def value name, type 
	#	name = name.to_sym
	#	@shape ||= {}
	#	@shape[name] = type   
	#	define_method(name) { @values[name] }
	#end
end
