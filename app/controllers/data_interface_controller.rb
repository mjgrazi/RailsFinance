class DataInterfaceController < ApplicationController
  def yahoo_quotes
    require 'rubygems'
    require 'json'
    require 'yahoo-finance'
    require 'cgi'
    
    symbol = params[:symbol]
    days = params[:daysBack].to_i
    
    data = YahooFinance.historical_quotes(symbol, Time::now-(24*60*60*days), Time::now, {raw:false, period: :daily })
    render json: data.to_json
    
  end
end
