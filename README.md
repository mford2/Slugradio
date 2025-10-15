# SlugRadio

SlugRadio is a Discord music bot written in Java, inspired by the JMusicBot (Jagrosh) project.
It features:
- Fair/weighted song scheduling between multiple users
- YouTube and local playlist support
- `!nowplaying` and `!seek` commands
- Dockerized for Ubuntu deployment

## Setup

```bash
git clone https://github.com/yourusername/slugradio.git
cd slugradio
mvn package
java -jar target/slugradio.jar
```

## Docker

```bash
docker build -t slugradio .
docker run -d --name slugradio -e DISCORD_TOKEN=your_token_here slugradio
```
