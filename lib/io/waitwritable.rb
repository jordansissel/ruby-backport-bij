# At some point ruby 1.9.x introduced WaitWritable.
# I still can't figure out how it is related to Errno::EINPROGRESS.
#
# Socket#connect_nonblock raises Errno::EINPROGRESS, but ruby's own
# documentation says you should rescue IO::WaitWritable.
# Dark magic, clearly. :(
if !IO.const_defined?(:WaitWritable)
  class IO
    WaitWritable = Errno::EINPROGRESS
  end
end
