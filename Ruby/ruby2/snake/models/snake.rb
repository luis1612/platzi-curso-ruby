module Model
    class Snake < Struct.new(:coords)

        attr_accessor :current_direction

        def initialize(coords)
            @current_direction = Events::RIGHT
            super(coords)
        end
         
        def draw(state)
            move_snake()
            coords.each do |coord|                
                coord.draw(state)
            end                                              
        end

        def get_head
            return coords.first
        end

        def append_to_body(new_block)
            self.coords.prepend(new_block)
        end

        def change_direction(key)
            self.current_direction = Events.get_direction(key)
        end

        def eat_itself?
            return  self.coords[1..-1].include?(get_head())           
        end

        def grow_up(food)
            part = food.clone()
            part.set_color("red")                     
            self.append_to_body(part)
        end

        
        def get_next_coord                    
            eps = Events.eps()
            new_coord = [self.coords.first.x+(eps[0]), self.coords.first.y+(eps[1])]            
            new_coord = Model::Coord.new(new_coord[0], new_coord[1])            
            return new_coord
        end

        private
        
        def move            
            new_c = get_next_coord()
            last_coord = self.coords.pop()
            last_coord.remove()                                              
            self.append_to_body(new_c)            
        end
        
        
        def move_snake()                                         
            move()            
        end
    end    
end