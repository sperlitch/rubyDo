require_relative '../../contracts/task_jack_contract'

class TaskJackDouble
  def self.create behavior
    case behavior
    when :bad_output
      TaskJack_BadOutput.new
    when :default
      TaskJack_Default.new
    end
  end
end

class TaskJack_Default < TaskJackContract
  
  def save input
    { :user_id => 1, :text => 'make me a sandwich', :id => 1 }
  end
    
end

class TaskJack_BadOutput < TaskJackContract
  
  def save input
    nil
  end
    
end
