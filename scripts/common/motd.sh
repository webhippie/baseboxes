#!/usr/bin/env bash
set -x

rm /etc/motd
echo "
 __      __      ___.   .__    .__              .__        
/  \    /  \ ____\_ |__ |  |__ |__|_____ ______ |__| ____  
\   \/\/   // __ \| __ \|  |  \|  \____ \\____ \|  |/ __ \ 
 \        /\  ___/| \_\ \   Y  \  |  |_> >  |_> >  \  ___/ 
  \__/\  /  \___  >___  /___|  /__|   __/|   __/|__|\___  >
       \/       \/    \/     \/   |__|   |__|           \/ 
" > /etc/motd

exit 0
