cd ~/Megatron-LM && pip install -e .
cd ~/Megatron-LM && pip install h5py transformers faiss_gpu nltk sentencepiece
cd ~/Megatron-LM && mkdir bert

cd ~/Megatron-LM/bert && wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/megatron_bert_345m/versions/v0.1_uncased/zip -O megatron_bert_345m_v0.1_uncased.zip
# cd ~/Megatron-LM/bert && unzip megatron_bert_345m_v0.1_uncased.zip
cd ~/Megatron-LM/bert && wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased-vocab.txt

cd ~/Megatron-LM && mkdir gpt
cd ~/Megatron-LM/gpt && wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/megatron_lm_345m/versions/v0.0/zip -O megatron_lm_345m_v0.0.zip
cd ~/Megatron-LM/gpt && wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-vocab.json
cd ~/Megatron-LM/gpt && wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-merges.txt
# cd ~/Megatron-LM/gpt && unzip megatron_lm_345m_v0.0.zip

#python tools/preprocess_data.py --input /root/outdata/wiki_all.json --output-prefix my-gpt2 --dataset-impl mmap --tokenizer-type GPTSentencePieceTokenizer --tokenizer-model sentencepiece.model --append-eod --workers 1