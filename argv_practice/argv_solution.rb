
# Your Solution

# start with this, run from terminal to see what you get.

sort_argv = ARGV.sort_by do |x|
				x.length
			end

sort_argv.each do |y|
	puts y
end