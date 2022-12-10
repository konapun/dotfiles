local filepath="$TMPDIR/roswell.deb"
curl -o $filepath -sL `curl -s https://api.github.com/repos/roswell/roswell/releases/latest | jq -r '.assets | .[] | select(.name|test("\\\.deb$")) | .browser_download_url'`
sudo dpkg -i $filepath
rm $filepath
