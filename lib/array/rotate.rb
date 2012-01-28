# Ruby < 1.9 doesn't have Array#rotate
if !Array.new.respond_to?(:rotate)
  class Array
    def rotate
      return self[1..-1] + self[0..0]
    end # def rotate
  end # class ARray
end

