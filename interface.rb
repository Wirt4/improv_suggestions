class Interface

  def initialize( output_msg )
    @output_msg = output_msg
    @category_msg = "Enter a category: "
    @topic_msg = "Enter a give: "
  end

  def getOption()
    opt = getUpcase(@output_msg)
    ch = opt[0]
    return ch.upcase
  end

  def getInput(solicit_msg)
    puts solicit_msg
    msg = gets
    msg.chomp!.strip!
    return msg
  end

  def getUpcase(solicit_msg)
    raw = getInput(solicit_msg)
    return raw.upcase
  end

  def getCategory()
    cat = getUpcase(@category_msg)
    return cat
  end

  def getTopic
    top = getInput(@topic_msg)
    return top
  end
end
  #mabye implement some setters?
