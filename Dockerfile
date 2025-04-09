# Use official Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install Python packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the notebook
COPY Master-Stine.ipynb .

# Install Jupyter
RUN pip install jupyter

# Expose port 8888 for Jupyter
EXPOSE 8888

# Start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
