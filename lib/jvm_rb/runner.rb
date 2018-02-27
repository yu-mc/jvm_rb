module JvmRb
  class Runner
    def self.start(options)
      puts "classpath #{options[:classpath]}, class: #{options[:args].first}, args: #{options[:args][1..-1]}"
    end
  end
end
