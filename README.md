# Recommendarr

![mockup](https://github.com/user-attachments/assets/d80e24f7-fce9-402d-b176-8e8ba3579c94)

Recommendarr is a web application that generates personalized TV show and movie recommendations based on your Sonarr, Radarr, Plex, and Jellyfin libraries using AI.

## 🌟 Features

- **AI-Powered Recommendations**: Get personalized TV show and movie suggestions based on your existing library.
- **Sonarr & Radarr Integration**: Connects directly to your media servers to analyze your TV and movie collections.
- **Plex, Jellyfin, Tautulli & Trakt Integration**: Analyzes your watch history for better recommendations.
- **Flexible AI Support**: Works with OpenAI, local models (Ollama/LM Studio), or any OpenAI-compatible API.
- **Customization Options**: Adjust recommendation count, model parameters, and more.
- **Dark/Light Mode**: Toggle between themes based on your preference.
- **Poster Images**: Displays media posters with fallback generation.

For a full list, see [Features](https://github.com/smart-coder997/recommendarr/wiki/Features).

## 📋 Prerequisites

Before installing, ensure you have the necessary services and access. See the [Prerequisites](https://github.com/smart-coder997/recommendarr/wiki/Prerequisites) page on the wiki for details.

## 🚀 Quick Start (Docker Hub - Easiest)

The simplest way to get started with Recommendarr:

```bash
# Pull and run with default port 3000
docker run -d \
  --name recommendarr \
  -p 3000:3000 \
  -v recommendarr-data:/app/server/data \
  tannermiddleton/recommendarr:latest
```

Then visit `http://localhost:3000` in your browser.

**Default Login:**
- Username: `admin`
- Password: `1234` (Change immediately after first login!)

**For other installation methods (Docker Compose, Build from Source, Manual), please see the [Installation](https://github.com/smart-coder997/recommendarr/wiki/Installation) page on the wiki.**

## 🔧 Configuration & Usage

After installation, you'll need to connect your media services and set up an AI provider.

- **[Connecting Services](https://github.com/smart-coder997/recommadarr/wiki/Connecting-Services)**: Connect Sonarr, Radarr, Plex, Jellyfin, Tautulli, Trakt.
- **[AI Service Setup](https://github.com/smart-coder997/recommendarr/wiki/AI-Service-Setup)**: Configure OpenAI, Ollama, LM Studio, or other compatible services.
- **[Authentication Setup](https://github.com/smart-coder997/recommendarr/wiki/Authentication-Setup) (Optional)**: Set up OAuth login with Google, GitHub, etc.
- **[Usage](https://github.com/smart-coder997/recommendarr/wiki/Usage)**: Learn how to generate recommendations.

## 🌐 Advanced Setup

- **[Reverse Proxy Setup](https://github.com/smart-coder997/smart-coder997/wiki/Reverse-Proxy-Setup)**: Run Recommendarr securely behind Nginx, Traefik, etc.
- **[Environment Variables](https://github.com/smart-coder997/smart-coder997/wiki/Environment-Variables)**: Full list of configuration options.

## 🔧 Troubleshooting

Encountering issues? Check the [Troubleshooting](https://github.com/smart-coder997/recommendarr/wiki/Troubleshooting) page on the wiki for common problems and solutions.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgements

- [Vue.js](https://vuejs.org/)
- [Sonarr](https://sonarr.tv/)
- [Radarr](https://radarr.video/)
- [Plex](https://www.plex.tv/)
- [Jellyfin](https://jellyfin.org/)
- [Tautulli](https://tautulli.com/)
- [Trakt](https://trakt.tv/)
- [OpenRouter](https://openrouter.ai/docs/quickstart)
