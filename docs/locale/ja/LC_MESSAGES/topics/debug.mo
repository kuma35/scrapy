Þ          ¬               <  þ   =  S   <       >   ¢  t   á  6   V       Û        q            /     ­   Ì  $  z  T       ô  §     [  ´  9  
     J     Î  P   í  }   >  S   ¼       2       P     f     x  1     Ô   º  k    ~   û  ~  z  É   ù   Basically this is a simple spider which parses two pages of items (the start_urls). Items also have a details page with additional information, so we use the ``cb_kwargs`` functionality of :class:`~scrapy.http.Request` to pass a partially populated item. Checking items scraped from a single start_url, can also be easily achieved using:: Debugging Spiders For more information, check the :ref:`topics-logging` section. Fortunately, the :command:`shell` is your bread and butter in this case (see :ref:`topics-shell-inspect-response`):: In order to see the item scraped from a specific url:: Logging Logging is another useful option for getting information about your spider run. Although not as convenient, it comes with the advantage that the logs will be available in all future runs should they be necessary again:: Open in browser Parse Command Scrapy Shell See also: :ref:`topics-shell-inspect-response`. Sometimes you just want to see how a certain response looks in a browser, you can use the ``open_in_browser`` function for that. Here is an example of how you would use it:: The most basic way of checking the output of your spider is to use the :command:`parse` command. It allows to check the behaviour of different parts of the spider at the method level. It has the advantage of being flexible and simple to use, but does not allow debugging code inside a method. Using the ``--verbose`` or ``-v`` option we can see the status at each depth level:: While the :command:`parse` command is very useful for checking behaviour of a spider, it is of little help to check what happens inside a callback, besides showing the response received and the output. How to debug the situation when ``parse_details`` sometimes receives no item? ``open_in_browser`` will open a browser with the response received by Scrapy at that point, adjusting the `base tag`_ so that images and styles are displayed properly. Project-Id-Version: Scrapy 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-04-10 01:26+0900
PO-Revision-Date: 2019-09-29 18:34+0900
Last-Translator: kuma35
Language: ja_JP
Language-Team: Japanese
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 åºæ¬çã«ãããã¯2ãã¼ã¸ã®ã¢ã¤ãã (start_urls)ããã¼ã¹ããåç´ãªã¹ãã¤ãã¼ã§ããã¢ã¤ãã ã«ã¯è¿½å æå ±ã®ããè©³ç´°ãã¼ã¸ãããããã :class:`~scrapy.http.Request` ã® `cb_kwargs`` æ©è½ãä½¿ç¨ãã¦ãé¨åçã«å¥åãããã¢ã¤ãã ãæ¸¡ãã¾ãã åä¸ã®start_urlããã¹ã¯ã¬ã¤ããããã¢ã¤ãã ã®ãã§ãã¯ããä»¥ä¸ãä½¿ç¨ãã¦ç°¡åã«å®ç¾ã§ãã¾ã:: ã¹ãã¤ãã¼ã®ãããã° è©³ç´°ã«ã¤ãã¦ã¯ :ref:`topics-logging` ç¯ããã§ãã¯ãã¦ä¸ããã :command:`shell` ã¯ãããããããªãã«ããã¿ãªã®ãã¼ã«ã§ã( :ref:`topics-shell-inspect-response` åç§):: ç¹å®ã®URLããã¹ã¯ã¬ã¤ãã³ã°ãããã¢ã¤ãã ãè¡¨ç¤ºããã«ã¯:: ã­ã®ã³ã° ã­ã®ã³ã°ã¯ãã¹ãã¤ãã¼ã®å®è¡ã«é¢ããæå ±ãåå¾ããããã®ãã1ã¤ã®ä¾¿å©ãªãªãã·ã§ã³ã§ããããã»ã©ä¾¿å©ã§ã¯ããã¾ããããã­ã°ãåã³å¿è¦ã«ãªã£ãå ´åã«ãå°æ¥ã®ãã¹ã¦ã®å®è¡ã§ã­ã°ãä½¿ç¨ã§ããã¨ããå©ç¹ãããã¾ã:: ãã©ã¦ã¶ãéã parseã³ãã³ã Scrapyã·ã§ã« :ref:`topics-shell-inspect-response` ãåç§ã ããªããç¹å®ã®ã¬ã¹ãã³ã¹ããã©ã¦ã¶ã§ã©ã®ããã«è¦ããããç¢ºèªãããã ãã®å ´åã¯ã ``open_in_browser`` é¢æ°ãä½¿ç¨ã§ãã¾ããä½¿ç¨æ¹æ³ã®ä¾ãæ¬¡ã«ç¤ºãã¾ã:: ã¹ãã¤ãã¼ã®åºåãç¢ºèªããæãåºæ¬çãªæ¹æ³ã¯ã :command:`parse` ã³ãã³ããä½¿ç¨ãããã¨ã§ããã¡ã½ããã»ã¬ãã«ã§ã¹ãã¤ãã¼ã®ãã¾ãã¾ãªé¨åã®åä½ãç¢ºèªã§ãã¾ããæè»ã§ä½¿ããããã¨ããå©ç¹ãããã¾ãããã¡ã½ããåã®ã³ã¼ãããããã°ãããã¨ã¯ã§ãã¾ããã ``--verbose`` ã¾ãã¯ ``-v`` ãªãã·ã§ã³ãä½¿ç¨ããã¨ãåæ·±åº¦ã¬ãã«ã§ã¹ãã¼ã¿ã¹ãç¢ºèªã§ãã¾ã:: :command:`parse` ã³ãã³ãã¯ã¹ãã¤ãã¼ã®åä½ãç¢ºèªããã®ã«éå¸¸ã«å½¹ç«ã¡ã¾ãããåä¿¡ããã¬ã¹ãã³ã¹ã¨åºåãè¡¨ç¤ºããä»¥å¤ã®ãã³ã¼ã«ããã¯åã§ä½ãèµ·ããããç¢ºèªãããã¨ã«ã¯ã»ã¨ãã©å½¹ã«ç«ã¡ã¾ããã ã§ã¯ã ``parse_details`` ãæãã¢ã¤ãã ãåãåããªãç¶æ³ããããã°ããã«ã¯ï¼ ``open_in_browser`` ã¯ããã®æç¹ã§Scrapyãåãåã£ãã¬ã¹ãã³ã¹ã§ãã©ã¦ã¶ã¼ãéããç»åã¨ã¹ã¿ã¤ã«ãé©åã«è¡¨ç¤ºãããããã« `base tag`_ ãèª¿æ´ãã¾ãã 