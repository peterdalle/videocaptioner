# videocaptioner

Convert jpg images to video, with their filenames burnt into the picture using [ffmpeg](https://ffmpeg.org/).

## Files

- `1_burn_filename_into_images.sh` will burn filenames into images and append `-mod.jpg` the filenames.
- `2_generate_file_list.sh` generates a list of files suitable for ffmpeg and saves them into `files.txt`.
- `3_build_video_from_frames.sh`concatenates all jpg files in `files.txt` and output it as an mp4 video.
