module DeliveryStateJp
  class Yamato < DeliveryStateJp::Base
    def self.action_url
      'http://toi.kuronekoyamato.co.jp/cgi-bin/tneko'
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
