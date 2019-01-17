class Rectangle
    attr_reader :width, :height

    def width=(value)
        if value < 0
            raise "Width can't be negative!"
        end
        @width = value
    end

    def height=(value)
        if value < 0
            raise "Height can't be negative!"
        end
        @height = value
    end

    def area
        width * height
    end
end

class Square < Rectangle
    def width=(value)
        @width = value
        @height = value
    end
    def height=(value)
        @width = value
        @height = value
    end
end

square = Square.new
square.height = 3
puts square.area
square_2 = Square.new
square_2.height = 4
puts square_2.area