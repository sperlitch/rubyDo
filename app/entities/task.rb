require 'obvious'

class Task < Obvious::Entity

  value :text, String
  value :user_id, Fixnum
  value :id, Fixnum
    
	#def value name, type 
	#	name = name.to_sym													=> text = text.sym
	#	@shape ||= {}																=> @shape = {}
	#	@shape[name] = type													=> @shape[:text] = String
	#	define_method(name) { @values[name] }				=> define_method(:text) { @values[:text] }
	#end
	#
	#
end
