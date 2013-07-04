# coding: utf-8

require "sinatra"
require "slim"
require "sass"
require "coffee-script"

class TakahashiMethod < Sinatra::Base
  get "/" do
    @pages = ["高橋メソッドを超簡単に実現するサービス", "Powered by Sinatra", "使い方", "site pathに", "内容直打ち", "|で区切る", "以上", "例", "http://tkhs.dec31.net/3兆円|ほしい|マジで", "問題点", "URL", "クソ長い", "ソース", "https://github.com/wenoki/tkhs-method", "作者", "@wenoki", "http://dec31.net/", "Thanks."]
    slim :application
  end

  get "/*" do |param|
    @pages = param.split "|"
    slim :application
  end
end
