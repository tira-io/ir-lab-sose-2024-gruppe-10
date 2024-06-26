# A prepared image with python3.10, java 11, ir_datasets, tira, and PyTerrier installed 
FROM webis/ir-lab-wise-2023:0.0.4

# Update the tira command to use the latest version
RUN pip3 uninstall -y tira \
	&& pip3 install tira \
	&& pip3 install nltk \
	&& pip3 install spacy \
	&& python -m spacy download en_core_web_sm \
	&& pip3 install typing-extensions

ADD . /app