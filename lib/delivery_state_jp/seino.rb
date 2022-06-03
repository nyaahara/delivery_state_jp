module DeliveryStateJp
  class Seino < DeliveryStateJp::Base
    def self.action_url
      'https://track.seino.co.jp/cgi-bin/gnpquery.pgm'
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

    def self.error_messages
      %w(入力されたお問合せ番号が見当りません お問合せ番号:桁数が不足しています お問合せ番号:数字のみを入力してください お問合せ番号:桁数がオーバーしています)
    end
  end
end
