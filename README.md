Polymer CLI
===========
Minimalistic Polymer-CLI container

Usage
-----
Below replace `polymer_app` with your polymer directory path.

### Commands
Run Polymer CLI:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli polymer
```

Run Bower:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli bower
```

Run Node:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli node
```

Run NPM:
```bash
docker run --rm -v "$(pwd)/polymer_app":/app willsquire/polymer-cli npm
```

### Build
Use in multi-stage builds:
```dockerfile
# Build Polymer project
FROM willsquire/polymer-cli as builder
COPY ./polymer_project .
RUN bower update &&\
    polymer build

# Copy the built result to a new image without all the 'extra', keeping it slim
FROM some-image
COPY --from=builder /app/build/default /var/www/html
```
