=begin

  Write a simple text file and use it with the resulting program.
  Write `#process` to read in a text file and pass the file's text to a block.
  All changes will be made to either `#process` or the blocks - no changes needed elsewhere.
  
  Every call to `#process` depends on the contents of the block to perform as intended. 
  `#process` will read in a (1) specified file.
    + the operation is passed within the block
    + the file has to be read in and passed to the yield

=end

class TextAnalyzer
  def process
    f = File.read('sample_text.txt')
    yield(f)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("\n\n").length} paragraphs"  }
analyzer.process { |file| puts "#{file.split("\n").length} lines"  }
analyzer.process { |file| puts "#{file.split(" ").length} words" } 
