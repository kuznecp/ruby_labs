# frozen_string_literal: true

require 'open-uri'

START_ROOT = 'https://www.e-katalog.ru/list/160/'

# main operating class
class TvSetController < ApplicationController
  before_action :prepare_list, only: :parse

  def parse
    @list.children.each do |child|
      next if child.attr('class')

      next if child.attr('class')

      @tv = TvSet.new
      @tv.name = child.search('.model-short-title').attr('title').value[0..-3]
      parse_characteristics(child)
      parse_price(child)
      replace_nbsp
      @tv.save
    end
  end

  private

  def replace_nbsp
    @tv.size.gsub!("\u00A0", '')
    @tv.price.gsub!("\u00A0", ' ')
  end

  def prepare_list
    doc = Nokogiri::HTML(URI.open(START_ROOT))
    @list = doc.search('#list_form1')
  end

  def parse_price(elem)
    text = elem.search('.model-price-range').text
    @tv.price = text[5..text.index('.')]
  end

  def parse_characteristics(elem)
    list = elem.search('.m-s-f2')
    list.children.each do |child|
      @tv.size = child.attr('title')[7..] if child.attr('title').include? 'Экран'
      @tv.multimedia = child.attr('title')[13..] if child.attr('title').include? 'Мультимедиа'
    end
  end
end
