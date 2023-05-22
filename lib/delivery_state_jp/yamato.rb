module DeliveryStateJp
  class Yamato < DeliveryStateJp::Base
    def self.delivery_state(args)
      content = response_body(args).force_encoding("UTF-8")
      if m = content.match(/１件目.+\n.+.+\n.+\n.+swd.write.+>(?<state>.+)\<br\>\<\/font\>\<\/td\>/)
        m[:state]
      else
        '不明'
      end
    end

    def self.action_url
      'https://toi.kuronekoyamato.co.jp/cgi-bin/tneko'
    end

    def self.post_params(number)
      {'number01' => number, 'number00' => '1'}
    end

    def self.xpath(index)
      "/html/body/center[1]/form/table/tr[#{index+2}]/td[5]/font/text()"
    end

    def self.charset
      'shift-jis'
    end

    def self.error_messages
      %w(伝票番号誤り)
    end
  end
end
