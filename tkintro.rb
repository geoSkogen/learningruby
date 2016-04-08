require 'tk'

root = TkRoot.new do
   title "Hello Tk"
   minsize(400, 400)
end

TkLabel.new(root) do
  text 'Hello Tk'
  foreground 'red'
  pack { padx 15 ; pady 15 ; side 'left'}
end

Tk.mainloop
