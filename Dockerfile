# Match Playwright version (VERY IMPORTANT)
FROM mcr.microsoft.com/playwright:v1.58.2-jammy

WORKDIR /app

# Copy package files first (better caching)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Install Newman globally
RUN npm install -g newman

# Copy rest of project
COPY . .

# Run both tests properly using shell
CMD ["sh", "-c", "npx playwright test && newman run \"API Test.postman_collection.json\""]