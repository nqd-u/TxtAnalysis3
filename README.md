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

### Running the Pre-Built Docker Image

1. **Pull the Docker Image**
   Download the pre-built containerized application from Docker Hub:

   ```bash
   docker pull <your-dockerhub-username>/txtanalysis-app
   ```

2. **Prepare the ************************************************************************`.env`************************************************************************ File**
   Create a `.env` file in your local directory with the following content:

   ```plaintext
   AI_SERVICE_ENDPOINT=your-azure-endpoint
   AI_SERVICE_KEY=your-azure-key
   ```

3. **Run the Container**
   Mount your `.env` file into the container and expose the application port:

   ```bash
   docker run -d -p 8080:8080 \
     -v $(pwd)/.env:/app/.env \
     <your-dockerhub-username>/txtanalysis-app
   ```

   **Explanation**:

   - `-v $(pwd)/.env:/app/.env`: Mounts your local `.env` file into the container.
   - `-p 8080:8080`: Maps the container's port 8080 to your local machine's port 8080.

4. **Access the Application**
   Open your browser and visit:

   ```
   http://localhost:8080
   ```

   You can also use tools like `curl` or Postman to interact with the API.

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

The application is based on sample code of Azure.AI.TextAnalytics --version 5.3.0. It has been enhanced by adding support for `.env` files to securely manage the endpoint and key, and by containerizing the modified application for portability and ease of deployment. 
