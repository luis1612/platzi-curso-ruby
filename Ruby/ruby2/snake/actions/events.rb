module Events
    UP = :up
    RIGHT = :right
    DOWN = :down
    LEFT = :left
    
    def self.send_envent(key)
        new_eps = get_direction(key)                               
        @@last_event = new_eps
        set_eps(get_new_eps(new_eps))        
    end
    
    def self.get_direction(key)        
        case key.key
            when "down"
                return Events::DOWN        
            when "left"
                return Events::LEFT        
            when "up"
                return Events::UP        
            when "right"
                return Events::RIGHT        
            end
    end
    
    def self.eps        
        @@eps
    end

    def self.last_event
        @@last_event
    end
    
    private
    @@eps = [1, 0]
    @@last_event = nil

    def self.get_new_eps(key)        
        case key    
            when Events::UP 
                return [0, -1]
            when Events::RIGHT 
                return  [1, 0]
            when Events::DOWN 
                return  [0, 1]
            when Events::LEFT 
                return [-1, 0]
        end
    end

    def self.set_eps(eps)        
        @@eps = eps        
    end
end