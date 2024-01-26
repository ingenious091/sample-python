import subprocess

def check_package_installation(package_name):
    """Checks if a given package is installed on the server."""
    try:
        subprocess.check_call([package_name, "--version"])
        print(f"{package_name} is installed!")
    except subprocess.CalledProcessError:
        print(f"{package_name} is not installed.")

# Check for ffmpeg
check_package_installation("ffmpeg")

# Check for libsndfile
check_package_installation("sndfile-info")  # Command to check libsndfile
