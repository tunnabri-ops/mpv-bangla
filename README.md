# mpv Bangla — হালকা ভিডিও প্লেয়ার + IPTV

Bangla-ready mpv setup, built on **mpv-player/mpv**.

- **Original repo:** https://github.com/mpv-player/mpv (a free, open source, and cross-platform media player — plays almost any video/audio file and stream)

## কী আছে / What is inside

- `mpv.conf` — ready config: hardware decoding, big stream cache, Bangla-friendly OSD, best quality for YouTube-style URLs.
- `input.conf` — handy keyboard shortcuts (see below).
- `play-iptv.sh` — plays the Bangla IPTV playlist from tunnabri-ops/iptv-bangladesh with one command.

## যা ঠিক করা হয়েছে / What was fixed

- Upstream ships with no config file at all — a new user gets default settings that stutter on slow streams and show no on-screen info. This config turns on hardware decoding and a 256 MB demuxer cache, so live TV stops buffering on a normal connection.
- The OSD shows the channel name and time in a readable size — upstream defaults are tiny and easy to miss on a TV.
- `play-iptv.sh` connects this player to yesterday's playlist (tunnabri-ops/iptv-bangladesh), so the two repos work together instead of each standing alone.

## ব্যবহার / How to use

```bash
# 1. Install mpv
sudo apt install mpv   # Debian/Ubuntu

# 2. Copy the config
mkdir -p ~/.config/mpv
cp mpv.conf input.conf ~/.config/mpv/

# 3. Play the Bangla IPTV playlist
./play-iptv.sh

# 4. Or play any file / stream directly
mpv https://example.com/stream.m3u8
```

Shortcuts: `f` fullscreen · `m` mute · `9`/`0` volume · `←`/`→` seek 5s · `q` quit · `n` next playlist item.
