def raise_and_rescue
  begin
    puts 'before the raise'
    raise 'an error has occured'
    puts 'after the raise'
  rescue
    puts 'I am rescued.'
  ensure
    puts 'I am after the exception handler'
  end
end
raise_and_rescue
