-- start a comment block
function comment_start(args, kwargs, meta)
  cmt = meta['show_comments']
  if cmt == nil or cmt == false then
    return pandoc.RawBlock('html', "<div style = 'display: none;'>")
  else
    return pandoc.RawBlock('html', "<div class = 'cmt'>")
  end
end

-- end a comment block
function comment_stop()
  return pandoc.RawBlock('html', "</div>")
end

-- inline comment
function comment(args, kwargs, meta)
  txt = pandoc.utils.stringify(args[1])
  cmt = meta['show_comments']
  if cmt == true then
    return pandoc.RawInline('html', "<span class = 'cmt'>" .. txt .. "</span>")
  end 
end
