import sys
import os

# Add parent directory to the Python path so app.py can be found
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from app import app

def test_home():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b"AWS DevOps Pipeline" in response.data

