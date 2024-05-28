# Use an official Redis image as base
FROM redis:latest

# Copy the Redis module file into the Redis modules directory
COPY your-module.so /usr/lib/redis/modules/

# Modify the Redis configuration to load the module
RUN echo "loadmodule /usr/lib/redis/modules/your-module.so" >> /usr/local/etc/redis/redis.conf

# Expose Redis port
EXPOSE 6379

# Start Redis server
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
