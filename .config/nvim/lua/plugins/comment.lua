local comment_status, comment = pcall(require, "comment")
if not comment_status then
  return
end

comment.setup()
