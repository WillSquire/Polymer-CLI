Polymer CLI
===========
Minimalistic Polymer-CLI container

Usage
-----
Below replace `polymer_app` with your polymer directory path

### Commands
Run Polymer CLI:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli polymer
```

Run Yarn:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli yarn
```

### Build
Use in multi-stage builds:
```dockerfile
# Copy & build Polymer project in the container
FROM willsquire/polymer-cli as builder
COPY ./polymer_app .
RUN polymer install &&\
    polymer build

# Copy the built app to a new image without all the 'extra', keeping it slim
FROM some-image
COPY --from=builder /app/build/default /var/www/html
```
