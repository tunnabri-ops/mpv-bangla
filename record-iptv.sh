#!/usr/bin/env bash
# record-iptv.sh — mpv দিয়ে চলমান IPTV স্ট্রিম রেকর্ড করুন
# ব্যবহার: ./record-iptv.sh <channel-url> [output-file]
# উদাহরণ: ./record-iptv.sh "https://example.com/channel.m3u8" ~/Videos/channel.mp4
# mpv রেকর্ড করে --stream-record দিয়ে, প্লেয়ারও একই সাথে চলে।
set -e
if [ -z "$1" ]; then
  echo "ব্যবহার: $0 <channel-url> [output-file]"
  exit 1
fi
command -v mpv >/dev/null || { echo "mpv পাওয়া যায়নি — sudo apt install mpv"; exit 1; }
URL="$1"
OUT="${2:-$HOME/Videos/iptv-$(date +%Y%m%d-%H%M%S).ts}"
mkdir -p "$(dirname "$OUT")"
echo "চালানো + রেকর্ড হচ্ছে: $URL → $OUT (বের হতে q)"
mpv --stream-record="$OUT" "$URL"
