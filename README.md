# SlugRadio

SlugRadio is a Discord music bot written in Java, inspired by JMusicBot (Jagrosh).
It features:
- Weighted/fair song scheduling between multiple users
- YouTube and local playlist support
- !nowplaying and !seek commands
- Dockerized with multi-stage build for Ubuntu deployment

## Setup

```bash
git clone https://github.com/yourusername/slugradio.git
cd slugradio
export DISCORD_TOKEN="your_bot_token_here"
docker compose up -d --build
```
