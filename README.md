# Recommendarr

![image](https://github.com/user-attachments/assets/50197f67-7810-48be-b23b-7899500055c4)

Recommendarr is a web application that generates personalized TV show and movie recommendations based on your Sonarr and Radarr libraries using AI.

## 🌟 Features

- **AI-Powered Recommendations**: Get personalized TV show and movie suggestions based on your existing library
- **Sonarr & Radarr Integration**: Connects directly to your media servers to analyze your TV and movie collections
- **Flexible AI Support**: Works with OpenAI, local models (Ollama/LM Studio), or any OpenAI-compatible API
- **Customization Options**: Adjust recommendation count, model parameters, and more
- **Dark/Light Mode**: Toggle between themes based on your preference
- **Poster Images**: Displays media posters with fallback generation

## 📋 Prerequisites

- [Sonarr](https://sonarr.tv/) instance with API access (for TV recommendations)
- [Radarr](https://radarr.video/) instance with API access (for movie recommendations)
- An OpenAI API key or any OpenAI-compatible API (like local LLM servers)
- Node.js (v14+) and npm for development

## 🚀 Quick Start

### Option 1: Docker (Recommended)

Using our pre-built Docker image is the quickest way to get started:

```bash
# Pull the image
docker pull tannermiddleton/recommendarr:latest

# Run the container
docker run -d \
  --name recommendarr \
  -p 3030:80 \
  tannermiddleton/recommendarr:latest
```

Then visit `http://localhost:3030` in your browser.

For more Docker options, see the [Docker Support](#-docker-support) section below.

### Option 2: Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/fingerthief/recommendarr.git
cd recommendarr
```

2. Install dependencies:
```bash
npm install
```

3. Run the development server:
```bash
npm run serve
```

4. Visit `http://localhost:3030` in your browser.

## 🔧 Configuration

### 1. Connect to Sonarr and/or Radarr

1. When you first open Recommendarr, you'll be prompted to connect to either Sonarr or Radarr
2. For Sonarr (TV shows):
   - Enter your Sonarr URL (e.g., `http://localhost:8989` or `https://sonarr.yourdomain.com`)
   - Enter your Sonarr API key (found in Sonarr under Settings → General)
   - Click "Connect"
3. For Radarr (Movies):
   - Enter your Radarr URL (e.g., `http://localhost:7878` or `https://radarr.yourdomain.com`)
   - Enter your Radarr API key (found in Radarr under Settings → General)
   - Click "Connect"

You can connect to both services or just one, depending on your needs.

### 2. Set Up AI Service

1. Navigate to Settings
2. Select the AI Service tab
3. Enter your AI service details:
   - **API URL**: For OpenAI, use `https://api.openai.com/v1`. For local models, use your server URL (e.g., `http://localhost:1234/v1`)
   - **API Key**: Your OpenAI API key or appropriate key for other services (not needed for some local servers)
   - **Model**: Select a model from the list or leave as default
   - **Parameters**: Adjust max tokens and temperature as needed
4. Click "Save Settings"

### 3. Get Recommendations

1. Navigate to TV Recommendations or Movie Recommendations page
2. Adjust the number of recommendations you'd like to receive using the slider
3. Click "Get Recommendations"
4. View your personalized media suggestions with posters and descriptions

## 🐋 Docker Support

### Option 1: Pull and Run Pre-built Image

The easiest way to run Recommendarr:

```bash
# Pull the image
docker pull tannermiddleton/recommendarr:latest

# Run the container
docker run -d \
  --name recommendarr \
  -p 3030:80 \
  tannermiddleton/recommendarr:latest
```

### Option 2: Build and Run Locally

If you want to build the Docker image yourself:

```bash
# Clone the repository
git clone https://github.com/fingerthief/recommendarr.git

# Navigate to the project directory
cd recommendarr

# Build the Docker image
docker build -t recommendarr:local .

# Run the container
docker run -d \
  --name recommendarr \
  -p 3030:80 \
  recommendarr:local
```

### Option 3: Docker Compose

The repository includes a `docker-compose.yml` file. Simply run:

```bash
# Clone the repository
git clone https://github.com/fingerthief/recommendarr.git

# Navigate to the project directory 
cd recommendarr

# Start with docker-compose
docker-compose up -d
```

This will build the image from the local Dockerfile and start the service on port 3030.

## 🖥️ Compatible AI Services

Recommendarr works with various AI services:

- **OpenAI API**: Standard integration with models like GPT-3.5 and GPT-4
- **Ollama**: Self-hosted models with OpenAI-compatible API
- **LM Studio**: Run models locally on your computer
- **Anthropic Claude**: Via OpenAI-compatible endpoints
- **Self-hosted models**: Any service with OpenAI-compatible chat completions API

## 🎬 TV and Movie Recommendations

### TV Recommendations
- Connect to your Sonarr instance to get personalized TV show recommendations
- The AI analyzes your TV library to understand your preferences
- Receives detailed recommendations with show descriptions and reasoning

### Movie Recommendations
- Connect to your Radarr instance to get personalized movie recommendations
- The AI analyzes your movie collection to understand genres and preferences you enjoy
- Get suggested movies with descriptions, reasoning, and poster images
- Easily discover new films based on your existing collection

## 🔒 Privacy

Your data never leaves your control:
- Sonarr and Radarr API credentials are stored in your browser's localStorage
- AI API keys are stored locally and used only for your requests
- Media library data is sent only to the AI service you configure
- No analytics or tracking are included in the application

## 💻 Development

```bash
# Install dependencies
npm install

# Run development server with hot-reload
npm run serve

# Compile and minify for production
npm run build

# Lint and fix files
npm run lint
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgements

- [Vue.js](https://vuejs.org/) - The progressive JavaScript framework
- [Sonarr](https://sonarr.tv/) - For the amazing API that powers TV recommendations
- [Radarr](https://radarr.video/) - For the API that enables movie recommendations
- [OpenRouter](https://openrouter.ai/docs/quickstart) - For the API that powers AI-based suggestions
