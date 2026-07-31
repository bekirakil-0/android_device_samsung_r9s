#!/system/bin/sh
# Flashlight Translator for Exynos Virtual Camera Node

TARGET_NODE="/sys/devices/virtual/camera/flash/rear_torch_flash"
CONTROL_PIPE="/tmp/torch_control"

# Create a named pipe if it doesn't already exist
if [ ! -p "$CONTROL_PIPE" ]; then
    rm -f "$CONTROL_PIPE"
    mkfifo "$CONTROL_PIPE"
    chmod 666 "$CONTROL_PIPE"
fi

# Continuous background loop to read input from OrangeFox and translate it
while true; do
    if read -r brightness_val < "$CONTROL_PIPE"; then
        # Translate OrangeFox input (> 0 means ON, 0 means OFF)
        if [ "$brightness_val" -gt 0 ] 2>/dev/null; then
            echo 1 > "$TARGET_NODE"
        else
            echo 0 > "$TARGET_NODE"
        fi
    fi
done &
