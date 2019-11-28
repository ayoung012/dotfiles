# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export FILE="ranger"
export TERMINAL="st"

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:$HOME/.scripts/i3cmds

PATH=$PATH:/opt/franz
PATH=$PATH:/opt/android-studio/bin
PATH=$PATH:/opt/processing-3.5.3
PATH=$PATH:/opt/Zotero_linux-x86_64:/opt/eclipse
PATH=$PATH:/opt/eclipse

export PATH

ANDROID_HOME=/opt/AndroidSDK
export ANDROID_HOME

SARL_VERSION=0.8.6
export SARL_VERSION

export LD_PRELOAD=$LD_PRELOAD:/usr/lib64/swipl-8.0.3/lib/x86_64-linux/libswipl.so.8
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/swipl-jpl/

export LD_PRELOAD=$LD_PRELOAD:/opt/malmo/build/Malmo/src/JavaWrapper/libMalmoJava.so
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/malmo/build/Malmo/src/JavaWrapper/
export MALMO_XSD_PATH=/opt/malmo/Schemas
