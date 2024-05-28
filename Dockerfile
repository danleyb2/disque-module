# Use an official Redis image as base
FROM redis:latest

COPY redis.conf /usr/local/etc/redis/redis.conf

# Copy the Redis module file into the Redis modules directory
COPY disque.so /usr/lib/redis/modules/

# Modify the Redis configuration to load the module
# RUN echo "loadmodule /usr/lib/redis/modules/disque.so" >> /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6379

# Start Redis server
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
