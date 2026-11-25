FROM osrm/osrm-backend:latest

WORKDIR /data
COPY araquari-joinville.osrm* /data/

CMD ["sh", "-c", "osrm-routed --algorithm mld --port ${PORT:-5000} /data/araquari-joinville.osrm"]