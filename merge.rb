before_file = '/* {filename} */' + "\n\n"
success_msg = 'Files merged.'
fail_msg    = 'Sorry dude, something is wrong.'
args        = ARGV;

def merge(args, before_file)
  
  output, output_file, files = ''
  
  output_file = args[0]
  args.slice!(0,1)
  
  args.each do|file|
    before_file = before_file.gsub('{filename}', "#{file}")
    file        = File.read("#{file}")
    output      = output + before_file + file + "\n\n"
  end
  
  File.open(output_file,'w') do |output_file|
    output_file.puts output 
    return true
  end

end

puts merge(args, before_file) ? success_msg : fail_msg;