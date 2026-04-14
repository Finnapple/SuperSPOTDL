# 🎵 SuperSPOTDL

> **High-quality Spotify music downloader. MP3 or FLAC. No hassle.**

SuperSPOTDL is a Python-based Spotify downloader that grabs **320kbps MP3** or **lossless FLAC** audio from Spotify tracks, albums, and playlists. It pulls track info from the Spotify API, sources audio from YouTube Music, and downloads everything with `yt-dlp` — with full metadata and album art embedded.

---

## ✨ Features

- 🎶 **MP3 & FLAC support** — choose between 320kbps MP3 or lossless FLAC
- 🔍 **Spotify API integration** — accurate track info, artist, album data
- 📺 **YouTube Music as audio source** — best available audio matched to your track
- 🏷️ **Metadata embedding** — ID3 tags (MP3) and FLAC tags automatically written
- 🖼️ **Album art embedding** — cover art saved directly into the audio file
- 💿 **Tracks, albums & playlists** — download individual songs or entire collections
- 🖥️ **Cross-platform** — works on Windows, macOS, and Linux

---

## 🗂️ File Structure

```
SuperSPOTDL/
├── spot_mp3.py         # Download script for MP3 format
├── spot_flac.py        # Download script for FLAC format
├── spot_mp3.bat        # Windows launcher for MP3 downloader
├── spot_flac.bat       # Windows launcher for FLAC downloader
├── setup.sh            # Setup script for Linux/macOS
├── setup.bat           # Setup script for Windows
└── requirements.txt    # Python dependencies
```

---

## 🚀 Getting Started

### Requirements

- Python 3.8+
- Spotify Developer account (for API credentials)
- Internet connection

### 1. Clone the repository

```bash
git clone https://github.com/Finnapple/SuperSPOTDL.git
cd SuperSPOTDL
```

### 2. Set up the environment

**Linux/macOS:**
```bash
chmod +x setup.sh
./setup.sh
```

**Windows:**
```
Run setup.bat
```

This will create a virtual environment and install all required dependencies from `requirements.txt`.

### 3. Configure Spotify API credentials

1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Create a new app and copy your **Client ID** and **Client Secret**
3. Add them to the script or set them as environment variables:
   ```bash
   export SPOTIFY_CLIENT_ID=your_client_id
   export SPOTIFY_CLIENT_SECRET=your_client_secret
   ```

### 4. Run the downloader

**Linux/macOS:**
```bash
# For MP3
python spot_mp3.py

# For FLAC
python spot_flac.py
```

**Windows:**
```
Double-click spot_mp3.bat   → for MP3
Double-click spot_flac.bat  → for FLAC
```

---

## 🎧 MP3 vs FLAC — Which should I use?

| | MP3 (320kbps) | FLAC (Lossless) |
|---|---|---|
| **File size** | Smaller | Larger |
| **Audio quality** | Excellent | Perfect/Lossless |
| **Compatibility** | Universal | Audiophile players |
| **Best for** | Everyday listening | Archiving / audiophiles |

---

## 📦 Dependencies

All dependencies are listed in `requirements.txt`. Key packages include:

- [`spotdl`](https://github.com/spotDL/spotify-downloader) — core download engine
- [`yt-dlp`](https://github.com/yt-dlp/yt-dlp) — YouTube audio extraction
- [`spotipy`](https://spotipy.readthedocs.io/) — Spotify API wrapper
- [`mutagen`](https://mutagen.readthedocs.io/) — audio metadata tagging

---

## ⚠️ Disclaimer

This tool is intended for **personal use only**. Downloading copyrighted music may violate Spotify's Terms of Service and copyright laws in your country. Use responsibly.

---

## 👤 Author

**Finnapple**
- GitHub: [@Finnapple](https://github.com/Finnapple)

---

<p align="center">Made for audiophiles, by an audiophile 🎧</p>
