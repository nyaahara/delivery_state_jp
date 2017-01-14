module DeliveryStateJp
  class Yamato < DeliveryStateJp::Base
    def self.action_url
      'http://toi.kuronekoyamato.co.jp/cgi-bin/tneko'
    end

    def self.post_params(number)
      {'number01' => number, 'number00' => '1'}
    end

    def self.xpath(index)
      "/html/body/center[3]/table[3]/tr[#{index + 1}]/td[2]/text()"
    end

    def self.charset
      'shift-jis'
    end
  end
end
