module DeliveryStateJp
  class Yuusei < DeliveryStateJp::Base
    def self.xpath(index)
      "//*[@id=\"content\"]/form/div/table[2]/tr[#{(index * 2) + 1}]/td[2]"
    end

    def self.response_body(args)
      number = args.fetch(:number)
      uri = URI.parse("https://trackings.post.japanpost.jp/services/srv/search/?requestNo1=#{number}&search=%E8%BF%BD%E8%B7%A1%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%88&startingUrlPatten=&locale=ja")
      response = Net::HTTP.get_response(uri)
      response.body
    end

    def self.charset
      'utf-8'
    end

    def self.error_messages
      %w(お問い合わせ番号の入力桁数に誤りがあります。)
    end
  end
end
