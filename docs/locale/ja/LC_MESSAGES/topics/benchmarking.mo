Þ          L               |      }   I     R  Ô     '  $   7  [  \     ¸  È  Ñ  A       Ü  5   î   Benchmarking Scrapy comes with a simple benchmarking suite that spawns a local HTTP server and crawls it at the maximum possible speed. The goal of this benchmarking is to get an idea of how Scrapy performs in your hardware, in order to have a common baseline for comparisons. It uses a simple spider that does nothing and just follows links. That tells you that Scrapy is able to crawl about 3000 pages per minute in the hardware where you run it. Note that this is a very simple spider intended to follow links, any custom spider you write will probably do more stuff which results in slower crawl rates. How slower depends on how much your spider does and how well it's written. To run it use:: You should see an output like this:: Project-Id-Version: Scrapy 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-04-10 01:26+0900
PO-Revision-Date: 2019-10-02 21:52+0900
Last-Translator: kuma35
Language: ja_JP
Language-Team: Japanese
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 ãã³ããã¼ã­ã³ã° Scrapyã«ã¯ãã­ã¼ã«ã«HTTPãµã¼ãã¼ãçæããå¯è½ãªæå¤§éåº¦ã§ã¯ã­ã¼ã«ããåç´ãªãã³ããã¼ã­ã³ã°ã»ã¹ã¤ã¼ããä»å±ãã¦ãã¾ãã ãã®ãã³ããã¼ã¯ã®ç®æ¨ã¯ããã¼ãã¦ã§ã¢ã§Scrapyãã©ã®ããã«æ©è½ããããææ¡ããæ¯è¼ã®ããã®å±éã®ãã¼ã¹ã©ã¤ã³ãå¾ããã¨ã«ããã¾ãã ä½ãããããªã³ã¯ããã©ãã·ã³ãã«ãªã¹ãã¤ãã¼ãä½¿ç¨ãã¾ãã ããã¯ãScrapyãå®è¡ããããªãã®ãã¼ãã¦ã§ã¢ã§1åãããç´3000ãã¼ã¸ãã¯ã­ã¼ã«ã§ãããã¨ãç¤ºãã¦ãã¾ãã ããã¯ããªã³ã¯ããã©ããã¨ãç®çã¨ããéå¸¸ã«åç´ãªã¹ãã¤ãã¼ã§ãããã¨ã«æ³¨æãã¦ãã ãããä½æããã«ã¹ã¿ã ã»ã¹ãã¤ãã¼ã¯ãããããããå¤ãã®å¦çãè¡ããããã¯ã­ã¼ã«éåº¦ãéããªãã¾ãã ã©ãã ãéããªããã¯ãã¹ãã¤ãã¼ãã©ãã ãè¡ããã¨ããããã©ãã ããã¾ãæ¸ããã¦ãããã«ä¾å­ãã¾ãã ãã®å®è¡ã¯:: æ¬¡ã®ãããªåºåãè¡¨ç¤ºãããã¯ãã§ã:: 