class Attachment
  attr_accessor :title, :size, :url

  def to_s
    "#{@title}, #{@size}"
  end
end

class Image < Attachment
end

class Video < Attachment
  attr_accessor :duration
end