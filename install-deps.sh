# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

mkdir -p ~/profile/code
# https://github.com/rupa/z
# z, oh how i love you
cd ~/profile/code
git clone https://github.com/rupa/z.git
chmod +x ~/profile/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/dronir/SpotifyControl
# Spotify Controll Script
cd ~/profile/code
git clone git://github.com/dronir/SpotifyControl.git

# https://github.com/jeroenbegyn/VLCControl
# VLC Controll Script
cd ~/profile/code
git clone git://github.com/jeroenbegyn/VLCControl.git

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments

