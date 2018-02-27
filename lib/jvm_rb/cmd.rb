require 'optparse'

module JvmRb
  class CMD
    def self.parse!
      options = {}
      parser = OptionParser.new do |opts|
        opts.banner = "Usage: javar [options]"
        opts.on("-v", "--version", "Print version") { options[:version] = true }
        opts.on("-h", "--help", "Print usage") { options[:help] = true }
        opts.on("-c", "--classpath path", "specify classpath") { |v| options[:classpath] = v }
        opts.on("--Xjre", "specify JRE path") { |v| options[:xjre] = v }
        opts.on("-- x,y,z", Array, "specify arguments") { |v| options[:args] = v }
      end
      parser.parse!
      options[:usage] = parser.help
      options
    end
  end
end
