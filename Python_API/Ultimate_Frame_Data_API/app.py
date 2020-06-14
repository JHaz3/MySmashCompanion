import UltimateFrameData
from flask import Flask

app = Flask(__name__)

@app.route('/ken')
def get_ken():
    return UltimateFrameData.UltimateFrameData('Ken').get_character_data()

@app.route('/cloud')
def get_cloud():
    return UltimateFrameData.UltimateFrameData('Cloud').get_character_data()


if __name__ == "__main__":
    app.run('0.0.0.0', port='5000')