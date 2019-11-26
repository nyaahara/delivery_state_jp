module DeliveryStateJp
  class Sagawa < DeliveryStateJp::Base
    def self.action_url
      'https://k2k.sagawa-exp.co.jp/p/sagawa/web/okurijoinput.jsp'
    end

    def self.post_params(number)
      {
        'jsf_tree_64' => 'H4sIAAAAAAAAAK1Vy27TQBQdlZSCUonXgi0SSAiEnMZ20lbd0FYqTdWqEm1BKAtrak8TR/aMGV+36QaJBXvWiC9A/QK+gB1bfoIta8YTN07GF1IJIsXyHJ25955zJpOLn2Q+leSFkD2LJtTvMys+P6E+S9UyiUKfQii4dSgZOwCZ+ZBJtkc57TH5qAQ3RZwIzjhsvbn/4/POr+9zpNYlNz2/H0aBVDjZ6e6qFo1Ri0bRojHRonHVFmu75JbnX642I5qmQO7uDugpbUSU9xqKH/Keoi2WtE7wlrwjc12y4OWdQW25153Ys388YD6sDSW5nYNWDlojkJSfYZLJQsn/MGvt68Xjb3c+fPwyp0rn89VUj8U0fyNZ/ryu1vXROgHyJJ9saI36jZVZfYgja1s99jNIMjhkQwBS88KgmRRb82d9hNkI5iCYi2AtBGsj2DKCrSDYqoHN5zMvYWBTqV8fJEq0ldIePaMeGybWiZ8dM8uPPPBDKz1PgcUTtmRh+X7U2WY0GHVFG5i2aPDSl3EUrkGCECKG7TTd0+DYPiA2coCMQFWKOtQ9lirJLC2KmH5r0DRcg6bjGsQstzFHbPPwaBCzyTaPjwYxB2zzAGkQU2RjimxMkY0pcjBFDqbIMRUtxIL3BK9wuWh6zTJA5+oBdvj4R3lNVcGGmHLwteZhTjtulYeZ77SqPCwPp13lYRE5y1UelpqzUuVhQTqrVR6WrbtU5WFxu02DV1M+L5VhPZ1xb+qEtsMgyP+n6r6QkkX6Ii9LPJtRQl3pMeXBRgYgeDHVVITvgdwAER4AlWBIqCfy1D/f0+cOU4dF7GJ5ulh4LpaUi8XiohmsKvUPZ6jfEjJWrsc0xAS0JqJ4/vdLPP/+6QbfoJwzWZScSvxTAdoYiLnXwtxrYe612uXsG//0B7QeqeGLosuq2gPc06POq5CdvRQCkuQ3JbDVj5sJAAA=',
        'jsf_state_64' => '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',
        'jsf_viewid' => '/web/okurijoinput.jsp',
        'main:no1' => number,
        'main:no2' => '',
        'main:no3' => '',
        'main:no4' => '',
        'main:no5' => '',
        'main:no6' => '',
        'main:no7' => '',
        'main:no8' => '',
        'main:no9' => '',
        'main:no10' => '',
        'main:toiStart' => '.',
        'main_SUBMIT' => '1',
      }
    end

    def self.xpath(index)
      "//*[@id=\"detail1\"]/table[2]/tbody/tr[#{index + 2}]/td[1]/text()"
    end

    def self.charset
      'shift-jis'
    end

    def self.error_messages
      %w(恐れ入りますが、お問い合せ送り状NOをお確かめください。)
    end
  end
end
