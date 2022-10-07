class ApplicationController < ActionController::Base

    def home
        render plain: "hello"
    end

end
