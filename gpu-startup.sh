cd ~/Megatron-LM && pip install -e .
cd ~/Megatron-LM && mkdir bert
cd ~/Megatron-LM/bert && wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/megatron_bert_345m/versions/v0.1_uncased/zip -O megatron_bert_345m_v0.1_uncased.zip
cd ~/Megatron-LM/bert && wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased-vocab.txt

