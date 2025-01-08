# Azure Text Analysis Demo

## Overview

This project demonstrates sentiment analysis, key phrase extraction, and entity recognition using the Azure Text Analysis service. It is fully containerized for easy testing and deployment.

## Features

- Pre-built container image available on Docker Hub.
- Supports mounting custom `.env` files for secure credential management.
- Processes a sample dataset of hotel reviews stored in plain-text files.

## Getting Started

### Prerequisites

1. Install Docker on your local machine:
   - [Docker Desktop](https://www.docker.com/products/docker-desktop/) for Windows or macOS.
   - [Docker Engine](https://docs.docker.com/engine/install/) for Linux.
2. Obtain an Azure Cognitive Services account and a valid Text Analysis API key and endpoint.

### Docker Hub Repository

The pre-built containerized application is available on Docker Hub:  
[txtanalysis-app3](https://hub.docker.com/r/ning0107/txtanalysis-app3).

To pull the image:
```bash
docker pull ning0107/txtanalysis-app3:latest
```

## Dataset Overview

The application processes a fixed dataset of hotel reviews stored in plain-text files. These files are preloaded into the container and demonstrate the capabilities of Azure Text Analysis.

### Example Dataset

- **Location**: `reviews/` folder in the project.
- **Structure**: Each file contains a review with metadata, such as hotel name, location, date, and review content.
- **Example Review**:
  ```plaintext
  File: review1.txt

  Good Hotel and staff
  The Royal Hotel, London, UK
  3/2/2018
  Clean rooms, good service, great location near Buckingham Palace and Westminster Abbey.
  ```

## Scalability

The project can be scaled to dynamically ingest data using pipelines that:

- Fetch data from relational databases, cloud storage, APIs, or web scraping.
- Process real-time data streams for continuous analysis.

## Security

- No sensitive data (e.g., API keys) is stored in the container image.
- Users provide their own credentials via the `.env` file.

## Contributing

Contributions are welcome! If you have suggestions for improvements or new features, feel free to submit a pull request or create an issue.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Acknowledgments

- [Azure Cognitive Services](https://azure.microsoft.com/en-us/services/cognitive-services/)
- [Docker Hub](https://hub.docker.com/)

The application is based on sample code of Azure.AI.TextAnalytics --version 5.3.0 and modify it by adding .env to ensure security of endpoint and key as well as containerizing the modified application. 

