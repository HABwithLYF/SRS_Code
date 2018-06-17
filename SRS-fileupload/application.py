# coding=utf-8
from flask import Flask ,render_template ,request ,jsonify
import os,sys
app = Flask(__name__)


@app.route('/muilti-upload' , methods=['GET','POST'])
def muiltiUpload():
	if request.method == 'POST':
		"""Handle the upload of a file."""
		form = request.form
		# 这里获取绝对路径
		abpath = os.path.abspath('./upload/')

		for upload in request.files.getlist("file"):
			filename = upload.filename.rsplit("/")[0]
			destination = "/".join([abpath, filename])
			print "Accept incoming file:", filename
			print "Save it to:", destination
			upload.save(destination)

		return jsonify(status='ok' ,msg='OVER')
	else:
		return render_template('muilti-upload.html')

if __name__ == '__main__':
	app.run(host="localhost" , debug=True)
