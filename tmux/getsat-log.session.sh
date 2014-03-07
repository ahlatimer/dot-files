# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/getsat-log"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "getsat-log"; then

  load_window "c2-log"
  load_window "services-log"
  load_window "legacy-log"
  load_window "bizcon-log"

  # Select the default active window on session creation.
  select_window 2

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
