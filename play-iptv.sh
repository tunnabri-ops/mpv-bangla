#!/usr/bin/env bash
# play-iptv.sh — tunnabri-ops/iptv-bangladesh প্লেলিস্ট mpv-তে চালান
# প্লেলিস্ট: 11টি বাংলাদেশি চ্যানেল (2026-11-23 যাচাই করা)
set -e
PLAYLIST="https://raw.githubusercontent.com/tunnabri-ops/iptv-bangladesh/main/playlist_bangladesh.m3u8"
command -v mpv >/dev/null || { echo "mpv পাওয়া যায়নি — sudo apt install mpv"; exit 1; }
echo "বাংলা IPTV চালানো হচ্ছে — চ্যানেল বদলাতে n / p চাপুন, বের হতে q"
mpv --playlist="$PLAYLIST"
