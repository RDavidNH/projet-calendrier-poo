require 'time'

class Event

  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration 
    @title = title
    @attendees = attendees
  end

  def to_s
    puts "> Titre : #{@title}"
    puts "> Date de début : #{@start_date}"
    puts "> Durée : #{@duration} mn"
    print "> Invités : "
    print @attendees.join(', ')
    #puts "Event is in the past: " + event_1.is_past?.to_s
    #puts "Event is in the future: " + event_1.is_future?.to_s
  end

  # postpone event 
  def postpone_24h
    @start_date = @start_date + (24 * 60 * 60 )
  end
  
  def is_past?
    return Time.now > @start_date ? true : false
  end
  
  def is_future?
    return !is_past?
  end
  
  # check if it is 30 mn before event
  def is_soon?
    return Time.now > @start_date - (30 * 60) && Time.now < @start_date && Time.now < end_date ? true : false
  end
  
  # display end date of event
  def end_date
    return @start_date + (60 * @duration)
  end

end
