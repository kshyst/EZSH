# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon           # Ubuntu logo ()
  dir               # Current directory ( ~)
  prompt_char       # Prompt character
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status            # ✔ or ✘
  command_execution_time  # took 1m 50s 
  user              # system 
  time              # at HH:MM:SS 
)

# Prompt icons
POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION=''
POWERLEVEL9K_DIR_HOME_ICON=''
POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_FOREGROUND='green'
POWERLEVEL9K_PROMPT_CHAR_OK_VIVIS_CONTENT_EXPANSION='╰─'
POWERLEVEL9K_PROMPT_CHAR_ERROR_VIVIS_CONTENT_EXPANSION='╰─'
POWERLEVEL9K_STATUS_OK_ICON='✔'
POWERLEVEL9K_STATUS_ERROR_ICON='✘'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_ICON=''
POWERLEVEL9K_USER_ICON='system '
POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_TIME_FORMAT='%H:%M:%S'
POWERLEVEL9K_TIME_TEXT='at %H:%M:%S '

# Colors and separators
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='╰─'
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Show prompt on two lines
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Font mode for Nerd Fonts
POWERLEVEL9K_MODE='awesome-patched'

# Other recommended settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_unique"
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
