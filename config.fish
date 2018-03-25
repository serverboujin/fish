function fish_greeting
  echo "Welcome back, SERVERBOUJIN."; date "+%Y/%m/%d %H:%M:%S"
end
function fish_mode_prompt --description 'Displays the current mode'
  switch $fish_bind_mode
    case default
      echo '[c]'
    case insert
      echo '[i]'
    case visual
      echo '[v]'
  end
  set_color normal
  echo -n ' '
end
function fish_prompt
  if [ $status -eq 0 ]
    set status_face (set_color green)"(*'-') > "
  else
    set status_face (set_color green)"( >.<) > "
  end
  set prompt (set_color yellow)(prompt_pwd)
  echo $prompt $status_face
end
function cdls
  builtin cd $argv[1]; and ls -a
end
alias vi='vim'
alias vd='vimdiff'
alias cd='cdls'
alias ll='ls -lh'


