# docker sickbeard-fr

This is a Dockerfile to set up sarakha63's (https://gitlab.com/sarakha63/) fork of "Sickbeard" - (http://sickbeard.com/) with french and english audio language

## Port

This image expose port 8081.

## Volume

You can save your data by mapping them to the volume /data.
You can save your media by mapping them to the volume /media.
You can save your configuration by mapping it to the volume /config.

## Usage
```
docker run -d -h *your_host_name* -v /*your_config_location*:/config  -v /*your_videos_location*:/data -p 8034:8081 slobberbone/sickbeard-fr
```

## Nginx redirection for OMV

Create a configuration file in /etc/nginx/openmediavault-webgui.d/ named sickbeard.conf wich contains :
```
  location /sickbeard {
         proxy_pass         http://localhost:8034/sickbeard;
         proxy_set_header   Host localhost:8034;
          proxy_redirect    default;
  }
```
Then reload nginx configuration :
```
service nginx reload
```
