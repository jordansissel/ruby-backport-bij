Dir.glob(File.join(File.dirname(__FILE__), "**", "*.rb")).each do |backport|
  $stderr.puts "Loading backport bij: #{backport}" if $DEBUG
  require backport
end
