class MyServer
    def call(env)
        return [[200, {"Content-Type" => "text/html"}, html_from_file],[200, {"Content-Type" => "text/html"}, pretty_response]].sample
    end

    def html_from_file
        File.open("test.html").readlines
    end
    def pretty_response
        (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
    end
end
