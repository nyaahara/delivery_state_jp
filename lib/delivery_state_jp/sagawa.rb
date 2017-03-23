module DeliveryStateJp
  class Sagawa < DeliveryStateJp::Base
    def self.action_url
      'http://k2k.sagawa-exp.co.jp/p/web/okurijosearch.do'
    end

    def self.post_params(number)
      {'okurijoNo' => number}
    end

    def self.xpath(index)
      "//*[@id=\"detail-1\"]/table[2]/tbody/tr[#{index + 1}]/td[1]/text()"
    end

    def self.charset
      'shift-jis'
    end

    def self.error_messages
      %w(恐れ入りますが、お問い合せ送り状NOをお確かめください。)
    end
  end
end
