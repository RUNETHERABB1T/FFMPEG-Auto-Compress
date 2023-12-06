@echo off

mkdir Compressed

;Image formats

for %%a in ("*.avif")  do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.avif"
for %%a in ("*.bmp")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.bmp"
for %%a in ("*.bpg")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.bpg"
for %%a in ("*.gif")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.gif"
for %%a in ("*.heif")  do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.heif"
for %%a in ("*.img")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.img"
for %%a in ("*.jpg")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.jpg"
for %%a in ("*.jpeg")  do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.jpeg"
for %%a in ("*.png")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.png"
for %%a in ("*.tiff")  do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.tiff"
for %%a in ("*.webp")  do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.webp"
for %%a in ("*.dng")   do ffmpeg -n -i "%%a" -map 0 -crf 30 "compressed/%%~na.dng"

;Video Formats

for %%a in ("*.flv")   do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.mkv"
for %%a in ("*.m4v")   do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.mkv"
for %%a in ("*.mkv")   do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.mkv"
for %%a in ("*.mp4")   do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.mkv"
for %%a in ("*.webm")  do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.mkv"

;Audio Formats

for %%a in ("*.ogg")  do ffmpeg -n -i "%%a" -map 0 -c:v libsvtav1 -crf 30 -c:a libopus -b:a 52k -frame_duration 60 "compressed/%%~na.wav"