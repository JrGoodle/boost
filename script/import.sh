# shellcheck shell=bash
# shellcheck disable=SC1090
# shellcheck disable=SC2153

# Homebrew
intel_brew_path='/usr/local/bin/brew'
m1_brew_path='/opt/homebrew/bin/brew'
# Export Homebrew variables for current platform
if [[ -x "$m1_brew_path" ]]; then
    eval "$($m1_brew_path shellenv)"
elif [[ -x "$intel_brew_path" ]]; then
    eval "$($intel_brew_path shellenv)"
fi

# JDK
if [ -z ${JAVA_HOME+x} ]; then
    # TODO: Check whether directory exists
    export JAVA_HOME='/Applications/Android Studio.app/Contents/jbr/Contents/Home'
fi
export PATH="$JAVA_HOME/bin:$PATH"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/ndk-bundle:$PATH"

export ANDROID_KEYSTORE="$HOME/.android/debug.keystore"
export ANDROID_KEYSTORE_PASSWORD='android'
export ANDROID_KEYSTORE_ALIAS='androiddebugkey'
export ANDROID_SIGNING_KEY_PASSWORD='android'

# rbenv
if command -v rbenv 1>/dev/null 2>&1; then eval "$(rbenv init -)" || true; fi
