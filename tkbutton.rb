require 'tk'

TkButton.new do
  text "EXIT"
  command { exit }
  pack { padx 15 ; pady 15 ; side 'left'}
end
Tk.mainloop
