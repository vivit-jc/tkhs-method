# coding: utf-8

require "sinatra"
require "slim"
require "sass"
require "coffee-script"
require "therubyracer"

get "/" do
  redirect "/高橋メソッドを超簡単に実現するサービス|Powered by Sinatra|使い方|site pathに|内容直打ち|パイプ区切り|以上|例|http://tkhs-method.com/3兆円｜ほしい｜マジで|問題点|URL|やたら長い|長過ぎると|bad request error|ソース|https://github.com/wenoki/tkhs-method|作者|http://dec31.net/|Thanks."
end

get "/*" do |param|
  @pages = param.split "|"

  p @pages.join(",")
end
