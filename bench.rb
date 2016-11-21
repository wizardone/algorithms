require 'benchmark'
def bench(count, &block)
  Benchmark.realtime do
    count.times { |i| yield(i) }
  end
end
