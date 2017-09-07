import terminal

proc pwinput(prompt: string = "Password: "): string = 
  ## reads a line from stdin 
  ## but does not echo characters
  var ch: char
  result = ""
  if prompt.len > 0: 
    write(stdout, prompt)
  while true:
    ch = getch()
    if ch == '\c':
      break
    result.add $ch


when isMainModule:
  echo pwinput()
  