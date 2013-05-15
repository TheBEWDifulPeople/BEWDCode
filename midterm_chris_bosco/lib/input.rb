class Input
    def welcome
        puts
        puts "Find your apartment in your city and name your price!"
        puts
    end
    def request_subdomain
        puts "Please enter your Craigslist region site (e.g. newjersey, newyork)"
        s = request_string
    rescue RuntimeError => error
        message_error_to_user error
        s = self.request_subdomain
    ensure
        begin
            @source.subdomain = s
        rescue RuntimeError => error
            message_error_to_user error
            s = self.request_subdomain
        end
    end

    def request_rent
        puts "Please enter the most you are willing to pay"
        s = request_string
    rescue RuntimeError => error
        message_error_to_user error
        s = self.request_rent
    ensure
        @source.max_rent = s.to_i
    end

    def initialize(source)
        @source = source
    end

    private
    def request_string
        puts "(Type 'exit' to end program at any time)"
        puts
        s = gets.chomp
        if s.empty?
            raise 'Input must not be empty'
        elsif s.downcase == 'exit'
            exit
        end
        s
    end

    def message_error_to_user(error)
        puts "Please fix: #{error}"
    end
end
