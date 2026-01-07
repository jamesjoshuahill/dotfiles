function cat --wraps bat
  if command -q bat
    command bat --style=header,grid $argv
    return
  end

  command cat $argv
end
