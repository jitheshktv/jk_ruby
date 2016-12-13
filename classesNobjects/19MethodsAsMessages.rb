class methodsAsMessages
  case input
    when :up_arrow then ship.tilt_up
    when :down_arrow then ship.tilt_down
    when :right_arrow then ship.tit_right
    when :left_arrow then ship.tilt_left
  end

  # the above case can be replaced by using a hash

  handlers = {up_arrow: :tilt_up,
              down_arrow: :tilt_down,
              left_arrow: :tilt_left,
              right_arrow: :tilt_right}

  ship.send(handlers[input])

  # our own implementation of send
  ship.__send__(handlers[input])
end

