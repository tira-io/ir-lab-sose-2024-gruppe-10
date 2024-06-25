# A prepared image with python3.10, java 11, ir_datasets, tira, and PyTerrier installed 
FROM webis/ir-lab-wise-2023:0.0.4

# Update the tira command to use the latest version
RUN pip3 uninstall -y tira \
	&& pip3 install tira

#install spacy for preprocessing
RUN pip3 uninstall -y spacy \
	&& pip3 install spacy

RUN python -m spacy download en_core_web_sm

ADD . /app

