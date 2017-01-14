module DeliveryStateJp
  class Base
    def self.delivery_state(args)
      doc = Nokogiri::HTML.parse(response_body(args), nil, charset)
      index = 1
      statuses = []
      while doc.xpath(xpath(index)).text.strip != ''
        statuses << doc.xpath(xpath(index)).text.strip
        index += 1
      end
      statuses.last
    end

    def self.response_body(args)
      number = args.fetch(:number)
      uri = URI.parse(action_url)
      request = Net::HTTP::Post.new(uri)
      request.set_form_data(post_params(number))
      req_options = {use_ssl: uri.scheme == 'https'}
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
      response.body
    end

    def self.charset
      fail NotImplementedError
    end

    def self.action_url
      fail NotImplementedError
    end

    def self.post_params(_number)
      fail NotImplementedError
    end

    def self.xpath(_index)
      fail NotImplementedError
    end
  end
end