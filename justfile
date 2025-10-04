set quiet

# List available recipies
default:
  just --list --unsorted --list-heading $'Available commands:\n'

# Run locally
[no-exit-message]
run :
  flutter run -d chrome
