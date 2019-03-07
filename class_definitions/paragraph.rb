def index(paragraph)
  paragraph if paragraph.title?
end


paragraph ='any string can be a paragraph'

# paragraphオブジェクトにのみこのメソッドを定義
def paragraph.title?
  self.upcase == self
end

p index(paragraph)
