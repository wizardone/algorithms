module Enumerable
  def interpose(sep:)
    Enumerator.new do |el|
      items = each
      loop do
        begin
          el << items.next
          el << sep if items.peek
        rescue StopIteration
          break
        end
      end
    end
  end
end
