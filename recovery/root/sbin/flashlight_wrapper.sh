#!/system/bin/sh
# Flashlight Translator for Exynos Virtual Camera Node

TARGET_NODE="/sys/devices/virtual/camera/flash/rear_torch_flash"
CONTROL_PIPE="/tmp/torch_control"

# Wait until /tmp directory is fully available and writable
while [ ! -d "/tmp" ]; do
    sleep 1
done

# Clean up any stale pipes and create a fresh named pipe
rm -f "$CONTROL_PIPE"
mkfifo "$CONTROL_PIPE"
chmod 666 "$CONTROL_PIPE"

# Continuous background loop to read input from OrangeFox and translate it
while true; do
    if read -r brightness_val < "$CONTROL_PIPE"; then
        if [ "$brightness_val" -gt 0 ] 2>/dev/null; then
            echo 1 > "$TARGET_NODE"
        else
            echo 0 > "$TARGET_NODE"
        fi
    fi
done &
