# docker sickbeard-fr

This is a Dockerfile to set up sarakha63's (https://gitlab.com/sarakha63/) fork of "Sickbeard" - (http://sickbeard.com/) for french people.

## Usage

docker run -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8081:8081 slobberbone/sickbeard-fr

