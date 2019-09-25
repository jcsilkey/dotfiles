#
# Defines environment variables.
#

if [[ -f $HOME/.env ]]; then
    while read line
    do
        export $line
    done < $HOME/.env
fi

if [[ "$OSTYPE" = darwin* ]] && [[ $(sw_vers -productName) = 'Mac OS X' ]]; then
  export OS_PLATFORM='mac'
  export OS_VERSION=$(sw_vers -productVersion)
  export OS_VERSION_MAJOR=$(echo $OS_VERSION | awk -F '.' '{print $1}')
  export OS_VERSION_MINOR=$(echo $OS_VERSION | awk -F '.' '{print $2}')
  export OS_VERSION_PATCH=$(echo $OS_VERSION | awk -F '-' '{print $1}' | awk -F '.' '{print $3}')
  export OS_VERSION_BUILD=$(sw_vers -buildVersion)
fi
