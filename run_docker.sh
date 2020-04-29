# Step 1:
# Build image and add a descriptive tag
docker build --tag=namitdoshi/udacity-devops-capstone .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run App
docker run -p 80:80 namitdoshi/udacity-devops-capstone