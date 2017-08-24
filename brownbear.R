x <- c("Brown bear", "Red bird", "Yellow duck", "Blue horse", "Green frog", "Purple Cat", "Goldfish", "Teacher")
txt <- capture.output(cat(
  sprintf("%s, %s, what do you see?\n  I see a %s looking at me.\n", head(x, -1), head(x, -1), tail(x, -1)),
  sprintf("Teacher Teacher what do you see\n  I see Children looking at me.\nChildren Children what do you see?\n  We see a %s and a Teacher looking at us, that's what we see.",
          paste0(collapse = ", ", head(x, -1))), sep = ""))
txt
