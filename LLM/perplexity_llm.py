# llms/perplexity_llm.py
from langchain.llms.base import LLM
from typing import Optional, List
import requests

class PerplexityLLM(LLM):
    def __init__(self, api_key: str):
        self.api_key = api_key

    @property
    def _llm_type(self) -> str:
        return "perplexity"

    def _call(self, prompt: str, stop: Optional[List[str]] = None) -> str:
        url = "https://api.perplexity.ai/chat/completions"
        
        headers = {"Authorization": f"Bearer {self.api_key}"}
        payload = {
            "model": "sonar-pro",
            "messages": [{"role": "user", "content": prompt}]
        }
        resp = requests.post(url, headers=headers, json=payload)

        return resp.json()["choices"][0]["message"]["content"]
    

 