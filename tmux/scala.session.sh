session_root "~/devs/scala"

if initialize_session "scala"; then
  load_window "scala-vim"
  load_window "scala-term"
fi

finalize_and_go_to_session
