module DeliveryStateJp
  class Seino < DeliveryStateJp::Base
    def self.action_url
      'http://track.seino.co.jp/cgi-bin/gnpquery.pgm'
    end

    def self.post_params(number)
      {'GNPNO1' => number}
    end

    def self.xpath(index)
      "//*[@id=\"alpha-inner\"]/form/table/tr[#{index + 1}]/td[4]/text()"
    end

    def self.charset
      'shift-jis'
    end
  end
end
