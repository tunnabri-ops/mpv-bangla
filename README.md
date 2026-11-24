# 🎬 mpv Bangla

[![Bangla](https://img.shields.io/badge/UI-Bangla%20%2B%20English-orange)](#)

**A light video player setup for Bangla IPTV — hardware decoding, a big stream cache, one-command play and record.**

> বাংলা সংস্করণ নিচে আছে। / Bangla version below.

## ✨ Features

- `mpv.conf` — ready config: hardware decoding (`hwdec=auto-safe`), big cache (256 MB demuxer cache, 30s readahead) so live streams stop stuttering on slow connections, readable on-screen display (font size 28, shows title + time), audio kept in sync on network streams, best quality (up to 1080p) for YouTube-style URLs, and position saved when you reopen a file.
- `input.conf` — handy keyboard shortcuts: `f` fullscreen · `m` mute · `9`/`0` volume · `←`/`→` seek 5s · `↑`/`↓` seek 60s · `n`/`p` next/previous playlist item · `q` quit.
- `play-iptv.sh` — plays the Bangla IPTV playlist (11 Bangladeshi channels) with one command; change channel with `n` / `p`, quit with `q`.
- `record-iptv.sh <channel-url> [output-file]` — plays a channel and records it at the same time (default `~/Videos/iptv-YYYYMMDD-HHMMSS.ts`).

## 🚀 How to use

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

# 5. Or play + record a channel
./record-iptv.sh "https://example.com/channel.m3u8" ~/Videos/channel.mp4
```

## ⚠️ Honest limits

- You need `mpv` installed — this repo is the config and the scripts, not the player itself.
- YouTube-style URLs need `yt-dlp` installed for the best-quality setting to work.
- A stream can still buffer on a very slow connection; the cache helps, but it cannot fix a dead stream.
- The playlist in `play-iptv.sh` is the Bangla IPTV list from the sibling repo — if a channel there goes offline, it will not play here either.

## 🇧🇩 বাংলা

**mpv বাংলা — হালকা ভিডিও প্লেয়ার + IPTV।**

- `mpv.conf` — তৈরি কনফিগ: হার্ডওয়্যার ডিকোডিং, বড় ক্যাশ (লাইভ টিভি আটকায় না), বড় অক্ষরে চ্যানেলের নাম।
- `./play-iptv.sh` — এক কমান্ডে ১১টা বাংলাদেশি চ্যানেলের প্লেলিস্ট চালায়।
- `./record-iptv.sh <লিংক> [ফাইল]` — চ্যানেল চালাতে চালাতে রেকর্ড করে।
- শর্টকাট: `f` ফুলস্ক্রিন · `m` মিউট · `n`/`p` চ্যানেল বদল · `q` বন্ধ।

## 📄 License

MIT — use it however you like; credit is appreciated.
