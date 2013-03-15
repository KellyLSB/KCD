DLL=/tmp/install_`date +%s`
curl https://raw.github.com/KellyLSB/KCD/master/kcd > $DLL
chmod +x $DLL
eval $DLL install