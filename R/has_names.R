
# @author 
# Borrowed from Hadley Wickham's dplyr package
# 
has_names <-
function(x) 
{
  nms <- names(x)
  if (is.null(nms)) {
    rep(FALSE, length(x))
  }
  else {
    !is.na(nms) & nms != ""
  }
}
