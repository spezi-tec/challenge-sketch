class Api::V1::HelloWorldController < ApplicationController
  def show
    render json: { msg: "#{random_hello}!! #{I18n.l DateTime.now}" }
  end

  private

  def random_hello
    hello_list.sample
  end

  def hello_list
    [
      'Hello World',
      'Olá Mundo',
      'こんにちは世界',
      'salve mundi',
      'Hallo Welt',
      'Привет мир',
      'Hola Mundo'
    ]
  end
end
