Þ          T                f     '   ô  ?   	  :   \	  G   	  6   ß	  E   
  :   \
  <   
  K   Ô
  9      J   Z  y   ¥  T     Z   t  N   Ï       %   ·  n   Ý     L  $   k       w   ©  E   !     g     z            þ   ¬  _   «  Ð     H   Ü  :   %     `  v   ò  N   i  :   ¸     ó            Y   3          ¡    ¾    V  «   k  ¶     J  Î  ±     ¤   Ë  æ   p  &  W  y   ~     ø  z     è   ü     å  D   ÷  2   <   Z   o      Ê      Ú      ê      ü   ª   !  ©   Â!  ²   l"  ó   #     $     %$  ä   2$  å   %  l  ý%  ¶   j'    !(  2  2)  À   e*  }   &+     ¤+    &,  ë   ½.  Î   ©/    x0  M   1  t   Ü1     Q2  e   Ö2  Ú   <3  B  4  ä   Z5  Ä   ?6  \  7  R  a8     ´9  ò  È9     »;  %   X<  "   ~<  Ð   ¡<     r=     =     £=     ¯=     Í=  m   Þ=     L>  $   _>     >  E   >     Ú>  !   ù>     ?  V   °?  B   @  B   J@  Q   @  =   ß@  O   A  B   mA  D   °A  V   õA  A   LB  1   B  $   ÀB     åB     úB  :   C  8   RC  !   C  .   ­C  ,   ÜC  %   	D  *   /D     ZD  [  mD     ÉE  :   PF  ?   F  :   ËF  G   G  6   NG  E   G  :   ËG  <   H  K   CH  9   H  W   ÉH     !I  j   ¤I  i   J  A   yJ  Ä   »J  $   K  z   ¥K  ?    L  H   `L     ©L      ÁL  M   bM     °M     ËM     åM     ýM  P  N     ^O  R  äO  l   7Q  H   ¤Q  î   íQ  ¼   ÜR  x   S  H   T     [T     sT     T     ¥T     7U     KU    fU  $  yW  Û   X  ó   zY    nZ    z\  á   ]  !  b^  ¡  _     &a  î   Ãa     ²b  t  Rc     Çd  ~   Ùd  W   Xe     °e     3f     Cf     Sf     ef  Ó   ~f  Í   Rg  ´    h  4  Õh  $   
j     /j    <j  ^  Yk  Ø  ¸l  D  n  c  Öo  £  :q  7  Þr     t     t  ä  1u  <  x  $  Sy  j  xz     ã{  ´   h|  Ì   }  u   ê}  ,  `~  ¨    j  6  '  ¡  -  É    ÷       D  §  ã   ì  E   Ð  ?       V     X     i               ³     Ä     d  $   w       `   ¬  &     6   4  º   k  i   &  e     B   ö  Q   9  =     O   É  B     D   \  V   ¡  A   ø  <   :  +   w     £     ¶  B   Ò  ?     -   U  3     6   ·  '   î  -        D   "no-referrer-when-downgrade" policy is the W3C-recommended default, and is used by major web browsers. "unsafe-url" policy is NOT recommended. :class:`scrapy.spidermiddlewares.referer.DefaultReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerWhenDowngradePolicy` :class:`scrapy.spidermiddlewares.referer.OriginPolicy` :class:`scrapy.spidermiddlewares.referer.OriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.SameOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.UnsafeUrlPolicy` :meth:`process_spider_input` should return ``None`` or raise an exception. :setting:`DEPTH_LIMIT` - The maximum depth that will be allowed to crawl for any site. If zero, no limit will be imposed. :setting:`DEPTH_PRIORITY` - Whether to prioritize the requests based on their depth. :setting:`DEPTH_STATS_VERBOSE` - Whether to collect the number of requests for each depth. :setting:`URLLENGTH_LIMIT` - The maximum URL length to allow for crawled URLs. A variant of "no-referrer-when-downgrade", with the addition that "Referer" is not sent if the parent request was using ``file://`` or ``s3://`` scheme. Acceptable values for REFERRER_POLICY According to the `HTTP standard`_, successful responses are those whose status codes are in the 200-300 range. Activating a spider middleware Built-in spider middleware reference Class name (as a string) Cross-origin requests, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Default: ``'scrapy.spidermiddlewares.referer.DefaultReferrerPolicy'`` Default: ``False`` Default: ``True`` Default: ``[]`` DepthMiddleware DepthMiddleware is used for tracking the depth of each Request inside the site being scraped. It works by setting ``request.meta['depth'] = 0`` whenever there is no value previously set (usually just the first Request) and incrementing it by 1 otherwise. Each spider middleware is a Python class that defines one or more of the methods defined below. Filter out unsuccessful (erroneous) HTTP responses so that spiders don't have to deal with them, which (most of the time) imposes an overhead, consumes more resources, and makes the spider logic more complex. Filters out Requests for URLs outside the domains covered by the spider. Filters out requests with URLs longer than URLLENGTH_LIMIT Finally, keep in mind that some middlewares may need to be enabled through a particular setting. See each middleware documentation for more info. For a list of the components enabled by default (and their orders) see the :setting:`SPIDER_MIDDLEWARES_BASE` setting. For example, if you want your spider to handle 404 responses you can do this:: For more information see: `HTTP Status Code Definitions`_. HTTPERROR_ALLOWED_CODES HTTPERROR_ALLOW_ALL Here's an example:: However, it is NOT Scrapy's default referrer policy (see :class:`DefaultReferrerPolicy`). HttpErrorMiddleware HttpErrorMiddleware settings If it raises an exception, Scrapy won't bother calling any other spider middleware :meth:`process_spider_input` and will call the request errback if there is one, otherwise it will start the :meth:`process_spider_exception` chain. The output of the errback is chained back in the other direction for :meth:`process_spider_output` to process it, or :meth:`process_spider_exception` if it raised an exception. If it returns ``None``, Scrapy will continue processing this exception, executing any other :meth:`process_spider_exception` in the following middleware components, until no middleware components are left and the exception reaches the engine (where it's logged and discarded). If it returns ``None``, Scrapy will continue processing this response, executing all other middlewares until, finally, the response is handed to the spider for processing. If it returns an iterable the :meth:`process_spider_output` pipeline kicks in, starting from the next spider middleware, and no other :meth:`process_spider_exception` will be called. If present, this classmethod is called to create a middleware instance from a :class:`~scrapy.crawler.Crawler`. It must return a new instance of the middleware. Crawler object provides access to all Scrapy core components like settings and signals; it is a way for middleware to access them and hook its functionality into Scrapy. If the request has the :attr:`~scrapy.http.Request.dont_filter` attribute set, the offsite middleware will allow the request even if its domain is not listed in allowed domains. If the spider doesn't define an :attr:`~scrapy.spiders.Spider.allowed_domains` attribute, or the attribute is empty, the offsite middleware will allow all requests. If you still want to process response codes outside that range, you can specify which response codes the spider is able to handle using the ``handle_httpstatus_list`` spider attribute or :setting:`HTTPERROR_ALLOWED_CODES` setting. If you want to disable a builtin middleware (the ones defined in :setting:`SPIDER_MIDDLEWARES_BASE`, and enabled by default) you must define it in your project :setting:`SPIDER_MIDDLEWARES` setting and assign ``None`` as its value.  For example, if you want to disable the off-site middleware:: It can be used to limit the maximum depth to scrape, control Request priority based on their depth, and things like that. It receives an iterable (in the ``start_requests`` parameter) and must return another iterable of :class:`~scrapy.http.Request` objects. Keep in mind, however, that it's usually a bad idea to handle non-200 responses, unless you really know what you're doing. Note: The policy's name doesn't lie; it is unsafe. This policy will leak origins and paths from TLS-protected resources to insecure origins. Carefully consider the impact of setting such a policy for potentially sensitive documents. OffsiteMiddleware Pass all responses with non-200 status codes contained in this list. Pass all responses, regardless of its status code. Populates Request ``Referer`` header, based on the URL of the Response which generated it. REFERER_ENABLED REFERRER_POLICY RefererMiddleware RefererMiddleware settings Requests from TLS-protected clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected clients to non-potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Requests from TLS-protected request clients to non- potentially trustworthy URLs, on the other hand, will contain no referrer information. A Referer HTTP header will not be sent. Scrapy's default referrer policy â just like `"no-referrer-when-downgrade"`_, the W3C-recommended value for browsers â will send a non-empty "Referer" header from any ``http(s)://`` to any ``https://`` URL, even if the domain is different. Spider Middleware String value The "no-referrer-when-downgrade" policy sends a full URL along with requests from a TLS-protected environment settings object to a potentially trustworthy URL, and requests from clients which are not TLS-protected to any origin. The "origin" policy specifies that only the ASCII serialization of the origin of the request client is sent as referrer information when making both same-origin requests and cross-origin requests from a particular request client. The "origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client is sent as referrer information when making cross-origin requests from a particular request client. The "same-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client. The "strict-origin" policy sends the ASCII serialization of the origin of the request client when making requests: - from a TLS-protected environment settings object to a potentially trustworthy URL, and - from non-TLS-protected environment settings objects to any origin. The "strict-origin-when-cross-origin" policy specifies that a full URL, stripped for use as a referrer, is sent as referrer information when making same-origin requests from a particular request client, and only the ASCII serialization of the origin of the request client when making cross-origin requests: The "unsafe-url" policy specifies that a full URL, stripped for use as a referrer, is sent along with both cross-origin requests and same-origin requests made from a particular request client. The :class:`DepthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :class:`UrlLengthMiddleware` can be configured through the following settings (see the settings documentation for more info): The :setting:`SPIDER_MIDDLEWARES` setting is merged with the :setting:`SPIDER_MIDDLEWARES_BASE` setting defined in Scrapy (and not meant to be overridden) and then sorted by order to get the final sorted list of enabled middlewares: the first middleware is the one closer to the engine and the last is the one closer to the spider. In other words, the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_input` method of each middleware will be invoked in increasing middleware order (100, 200, 300, ...), and the :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_output` method of each middleware will be invoked in decreasing order. The main entry point is the ``from_crawler`` class method, which receives a :class:`~scrapy.crawler.Crawler` instance. The :class:`~scrapy.crawler.Crawler` object gives you access, for example, to the :ref:`settings <topics-settings>`. The simplest policy is "no-referrer", which specifies that no referrer information is to be sent along with requests made from a particular request client to any origin. The header will be omitted entirely. The spider middleware is a framework of hooks into Scrapy's spider processing mechanism where you can plug custom functionality to process the responses that are sent to :ref:`topics-spiders` for processing and to process the requests and items that are generated from spiders. This is a user agent's default behavior, if no policy is otherwise specified. This method is called for each response that goes through the spider middleware and into the spider, for processing. This method is called when a spider or :meth:`process_spider_output` method (from a previous spider middleware) raises an exception. This method is called with the results returned from the Spider, after it has processed the response. This method is called with the start requests of the spider, and works similarly to the :meth:`process_spider_output` method, except that it doesn't have a response associated and must return only requests (not items). This middleware filters out every request whose host names aren't in the spider's :attr:`~scrapy.spiders.Spider.allowed_domains` attribute. All subdomains of any domain in the list are also allowed. E.g. the rule ``www.example.org`` will also allow ``bob.www.example.org`` but not ``www2.example.com`` nor ``example.com``. This page describes all spider middleware components that come with Scrapy. For information on how to use them and how to write your own spider middleware, see the :ref:`spider middleware usage guide <topics-spider-middleware>`. To activate a spider middleware component, add it to the :setting:`SPIDER_MIDDLEWARES` setting, which is a dict whose keys are the middleware class path and their values are the middleware orders. To avoid filling the log with too much noise, it will only print one of these messages for each new domain filtered. So, for example, if another request for ``www.othersite.com`` is filtered, no log message will be printed. But if a request for ``someothersite.com`` is filtered, a message will be printed (but only for the first request filtered). To decide which order to assign to your middleware see the :setting:`SPIDER_MIDDLEWARES_BASE` setting and pick a value according to where you want to insert the middleware. The order does matter because each middleware performs a different action and your middleware could depend on some previous (or subsequent) middleware being applied. UrlLengthMiddleware When implementing this method in your spider middleware, you should always return an iterable (that follows the input one) and not consume all ``start_requests`` iterator because it can be very large (or even unbounded) and cause a memory overflow. The Scrapy engine is designed to pull start requests while it has capacity to process them, so the start requests iterator can be effectively endless where there is some other condition for stopping the spider (like a time limit or item/page count). When your spider returns a request for a domain not belonging to those covered by the spider, this middleware will log a debug message similar to this one:: Whether to enable referer middleware. Writing your own spider middleware You can also set the Referrer Policy per request, using the special ``"referrer_policy"`` :ref:`Request.meta <topics-request-meta>` key, with the same acceptable values as for the ``REFERRER_POLICY`` setting. `"no-referrer"`_ `"no-referrer-when-downgrade"`_ `"origin"`_ `"origin-when-cross-origin"`_ `"same-origin"`_ `"same-origin"`_ may be a better choice if you want to remove referrer information for cross-domain requests. `"strict-origin"`_ `"strict-origin-when-cross-origin"`_ `"unsafe-url"`_ `Referrer Policy`_ to apply when populating Request "Referer" header. ``"scrapy-default"`` (default) crawler that uses this middleware either a path to a ``scrapy.spidermiddlewares.referer.ReferrerPolicy`` subclass â a custom policy or one of the built-in ones (see classes below), from a TLS-protected environment settings object to a potentially trustworthy URL, and from non-TLS-protected environment settings objects to any origin. https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer-when-downgrade https://www.w3.org/TR/referrer-policy/#referrer-policy-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-same-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-unsafe-url or one of the standard W3C-defined string values, or the special ``"scrapy-default"``. the exception raised the response being processed the response being processed when the exception was raised the response which generated this output from the spider the result returned by the spider the spider for which this response is intended the spider to whom the start requests belong the spider which raised the exception the spider whose result is being processed the start requests Project-Id-Version: Scrapy 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-04-10 01:26+0900
PO-Revision-Date: 2019-10-05 07:43+0900
Last-Translator: kuma35
Language: ja_JP
Language-Team: Japanese
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.0
 "no-referrer-when-downgrade" ããªã·ã¼ã¯W3Cæ¨å¥¨ã®ããã©ã«ãã§ãããä¸»è¦ãªWebãã©ã¦ã¶ã¼ã§ä½¿ç¨ããã¾ãã "unsafe-url" ããªã·ã¼ã¯ **æ¨å¥¨ããã¾ãã** ã :class:`scrapy.spidermiddlewares.referer.DefaultReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerPolicy` :class:`scrapy.spidermiddlewares.referer.NoReferrerWhenDowngradePolicy` :class:`scrapy.spidermiddlewares.referer.OriginPolicy` :class:`scrapy.spidermiddlewares.referer.OriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.SameOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginPolicy` :class:`scrapy.spidermiddlewares.referer.StrictOriginWhenCrossOriginPolicy` :class:`scrapy.spidermiddlewares.referer.UnsafeUrlPolicy` :meth:`process_spider_input` ã¯ ``None`` ãè¿ãããä¾å¤ãçºçããã¾ãã :setting:`DEPTH_LIMIT` - ä»»æã®ãµã¤ãã§ã¯ã­ã¼ã«ã§ããæå¤§æ·±åº¦ãã¼ã­ã®å ´åãå¶éã¯èª²ããã¾ããã :setting:`DEPTH_PRIORITY` - æ·±ãã«åºã¥ãã¦ãªã¯ã¨ã¹ãã«åªåé ä½ãä»ãããã©ããã :setting:`DEPTH_STATS_VERBOSE` - åæ·±ãã®ã¬ãã«ã§ãªã¯ã¨ã¹ãæ°ãåéãããã©ããã :setting:`URLLENGTH_LIMIT` - ã¯ã­ã¼ã«ããURLã®æå¤§é·ã "no-referrer-when-downgrade" ã®å¤å½¢(variant)ãããã«ãè¦ªãªã¯ã¨ã¹ãã ``file://`` ã¾ãã¯ ``s3://`` ã¹ã­ã¼ã ãä½¿ç¨ãã¦ããå ´åã "Referer" ã¯éä¿¡ããã¾ããã REFERRER_POLICYãåãå¥ããå¤ `HTTP standard`_ ã«ããã¨ãæåããã¬ã¹ãã³ã¹ã¨ã¯ãã¹ãã¼ã¿ã¹ã³ã¼ãã200ã300ã®ç¯å²ã§ãã ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ãã¢ã¯ãã£ãã«ãã çµã¿è¾¼ã¿ã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã»ãªãã¡ã¬ã³ã¹ ã¯ã©ã¹å(æå­å) ä¸æ¹ãã¯ã­ã¹ã»ãªãªã¸ã³ãªã»ã¯ã¨ã¹ãã«ã¯ãªãã¡ã©ã¼æå ±ã¯å«ã¾ãã¾ããããªãã¡ã©ã¼HTTPãããã¼ã¯éä¿¡ããã¾ããã ããã©ã«ã: ``'scrapy.spidermiddlewares.referer.DefaultReferrerPolicy'`` ããã©ã«ã: ``False`` ããã©ã«ã: ``True`` ããã©ã«ã: ``[]`` DepthMiddleware DepthMiddlewareã¯ãã¹ã¯ã¬ã¤ãã³ã°ããããµã¤ãåã®åãªã¯ã¨ã¹ãã®æ·±ããè¿½è·¡ããããã«ä½¿ç¨ããã¾ããä»¥åã«å¤ãè¨­å®ãããäºããªãå ´åã¯ã``request.meta['depth'] = 0`` ãè¨­å®ã(éå¸¸ã¯æåã®ãªã¯ã¨ã¹ãã®ã¿)ãããä»¥å¤ã®å ´åã¯1ã¤ã³ã¯ãªã¡ã³ããã¾ãã åã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã¯ãä»¥ä¸ã§å®ç¾©ããã1ã¤ä»¥ä¸ã®ã¡ã½ãããå®ç¾©ããPythonã¯ã©ã¹ã§ãã å¤±æãã(èª¤ã£ã)HTTPã¬ã¹ãã³ã¹ããã£ã«ã¿ã¼å¦çãã¦ãã¹ãã¤ãã¼ããããã«å¯¾å¦ããå¿è¦ããªãããã«ãã¾ããããã«ããã(ã»ã¨ãã©ã®å ´å)ãªã¼ãã¼ããããçºçããããå¤ãã®ãªã½ã¼ã¹ãæ¶è²»ãããã¹ãã¤ãã¼ã»ã­ã¸ãã¯ãããè¤éã«ãªãã¾ãã ã¹ãã¤ãã¼ãå¯¾è±¡ã¨ãããã¡ã¤ã³ããå¤ãã¦ããURLã®ãªã¯ã¨ã¹ããé¤å¤ãã¾ãã URLLENGTH_LIMITããé·ãURLãæã¤ãªã¯ã¨ã¹ããé¤å¤ãã¾ã æå¾ã«ãç¹å®ã®è¨­å®ã§ä¸é¨ã®ããã«ã¦ã§ã¢ãæå¹ã«ããå¿è¦ãããå ´åããããã¨ã«æ³¨æãã¦ãã ããã è©³ç´°ã«ã¤ãã¦ã¯ãåããã«ã¦ã§ã¢ã®ãã­ã¥ã¡ã³ããåç§ãã¦ãã ããã ããã©ã«ãã§æå¹ã«ãªã£ã¦ããã³ã³ãã¼ãã³ã(ããã³ãã®é åº)ã®ãªã¹ãã«ã¤ãã¦ã¯ã :setting:`SPIDER_MIDDLEWARES_BASE` è¨­å®ãåç§ãã¦ãã ããã ãã¨ãã°ãã¹ãã¤ãã¼ã«404 ã¬ã¹ãã³ã¹ãå¦çããããå ´åãä»¥ä¸ãè¡ããã¨ãã§ãã¾ã:: è©³ç´°æå ±ã¯ `HTTP Status Code Definitions`_ ãåç§ãã ããã HTTPERROR_ALLOWED_CODES HTTPERROR_ALLOW_ALL ä»¥ä¸ã«ä¾ãããã¾ã:: ãã ããããã¯Scrapyã®ããã©ã«ãã®ãªãã¡ã©ã¼ã»ããªã·ã¼ã§ã¯ããã¾ãã( :class:`DefaultReferrerPolicy` ãåç§)ã HttpErrorMiddleware HttpErrorMiddleware è¨­å® ä¾å¤ãçºçããå ´åãScrapyã¯ä»ã®ã¹ãã¤ãã¼ããã«ã¦ã§ã¢ã® :meth:`process_spider_input` ãå¼ã³åºããããªã¯ã¨ã¹ããããå ´åã¯ãªã¯ã¨ã¹ãã®errbackãå¼ã³åºããããã§ãªãå ´åã¯ :meth:`process_spider_exception` ãã§ã¼ã³ãéå§ãã¾ããerrbackã®åºåã¯ã :meth:`process_spider_output` ãå¦çããããã«å¥ã®æ¹åã«æ»ããã(chain back)ããã¾ãã¯ãä¾å¤ããçºçããå ´åã¯ :meth:`process_spider_exception` ã«æ»ã(chain back)ã¾ãã ``None`` ãè¿ãããå ´åãScrapyã¯ãã®ä¾å¤ã®å¦çãç¶è¡ããå¦çããããã«ã¦ã§ã¢ã»ã³ã³ãã¼ãã³ããç¡ããªã£ã¦ã¨ã³ã¸ã³ã«å°éããã¾ã§ãç¶ãããã«ã¦ã§ã¢ã»ã³ã³ãã¼ãã³ãã§ :meth:`process_spider_exception` ãå®è¡ãã¾ãã ``None`` ãè¿ãå ´åãScrapyã¯ãã®ã¬ã¹ãã³ã¹ã®å¦çãç¶è¡ããæå¾ã«ã¬ã¹ãã³ã¹ãã¹ãã¤ãã¼ã«æ¸¡ããã¦å¦çãããã¾ã§ãä»ã®ãã¹ã¦ã®ããã«ã¦ã§ã¢ãå®è¡ãã¾ãã åå¾©å¯è½ãªãã¸ã§ã¯ã(iterable)ãè¿ãå ´åã :meth:`process_spider_output` ãã¤ãã©ã¤ã³ã¯æ¬¡ã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ããéå§ãããä»ã® :meth:`process_spider_exception` ã¯å¼ã³åºããã¾ããã å­å¨ããå ´åããã®ã¯ã©ã¹ã¡ã½ããã¯ :class:`~scrapy.crawler.Crawler` ããããã«ã¦ã§ã¢ã»ã¤ã³ã¹ã¿ã³ã¹ãä½æããããã«å¼ã³åºããã¾ããããã«ã¦ã§ã¢ã®æ°ããã¤ã³ã¹ã¿ã³ã¹ãè¿ãå¿è¦ãããã¾ããã¯ã­ã¼ã©ã¼ã»ãªãã¸ã§ã¯ãã¯ãè¨­å®ãä¿¡å·ãªã©ã®ãã¹ã¦ã®Scrapyã³ã¢ã³ã³ãã¼ãã³ãã¸ã®ã¢ã¯ã»ã¹ãæä¾ãã¾ããããã¯ããã«ã¦ã§ã¢ããããã«ã¢ã¯ã»ã¹ãããã®æ©è½ãScrapyã«ããã¯ããæ¹æ³ã§ãã ãªã¯ã¨ã¹ãã« :attr:`~scrapy.http.Request.dont_filter` å±æ§ãè¨­å®ããã¦ããå ´åããã®ãã¡ã¤ã³ãè¨±å¯ããããã¡ã¤ã³ã«ãªã¹ãããã¦ããªãã¦ãããªããµã¤ãã»ããã«ã¦ã§ã¢ã¯ãªã¯ã¨ã¹ããè¨±å¯ãã¾ãã ã¹ãã¤ãã¼ã :attr:`~scrapy.spiders.Spider.allowed_domains` å±æ§ãå®ç¾©ãã¦ããªãå ´åãã¾ãã¯å±æ§ãç©ºã®å ´åããªããµã¤ãã»ããã«ã¦ã§ã¢ã¯ãã¹ã¦ã®ãªã¯ã¨ã¹ããè¨±å¯ãã¾ãã ããã§ããã®ç¯å²å¤ã®ã¬ã¹ãã³ã¹ã»ã³ã¼ããå¦çãããå ´åã¯ã ``handle_httpstatus_list`` ã¹ãã¤ãã¼å±æ§ã¾ãã¯ :setting:`HTTPERROR_ALLOWED_CODES` è¨­å®ãä½¿ç¨ãã¦ãã¹ãã¤ãã¼ãå¦çã§ããã¬ã¹ãã³ã¹ã»ã³ã¼ããæå®ã§ãã¾ãã çµã¿è¾¼ã¿ããã«ã¦ã§ã¢( :setting:`SPIDER_MIDDLEWARES_BASE` ã§å®ç¾©ãããããã©ã«ãã§æå¹ã«ãªã£ã¦ããããã«ã¦ã§ã¢)ãç¡å¹ã«ããå ´åã¯ããã­ã¸ã§ã¯ãã® :setting:`SPIDER_MIDDLEWARES` è¨­å®ã§å®ç¾©ãããã®å¤ã¨ãã¦ ``None`` ãå²ãå½ã¦ãå¿è¦ãããã¾ãããã¨ãã°ããªããµã¤ãã»ããã«ã¦ã§ã¢ãç¡å¹ã«ããå ´åã¯æ¬¡ã®éãã§ã:: ã¹ã¯ã¬ã¤ãã³ã°ããæå¤§æ·±åº¦ãå¶éããããæ·±åº¦ã«åºã¥ãã¦ãªã¯ã¨ã¹ãã®åªååº¦ãå¶å¾¡ããããããã¨ãã§ãã¾ãã ( ``start_requests`` ãã©ã¡ã¼ã¿ã¼ã§)åå¾©å¯è½ãªãã¸ã§ã¯ã(iterable)ãåãåããå¥ã® :class:`~scrapy.http.Request` ãªãã¸ã§ã¯ãã®åå¾©å¯è½ãªãã¸ã§ã¯ã(iterable)ãè¿ããªããã°ãªãã¾ããã ãã ããèªåãä½ããã¦ããã®ãæ¬å½ã«ããã£ã¦ããªãéãã200ä»¥å¤ã®å¿ç­ãå¦çãããã¨ã¯éå¸¸è¯ããªãèãã§ãã æ³¨ï¼ããªã·ã¼ã®ååã«é ¼ã£ã¦ã¯ããã¾ãããå®å¨ã§ã¯ããã¾ããããã®ããªã·ã¼ã¯ãTLSã§ä¿è­·ããããªã½ã¼ã¹ããå®å¨ã§ãªããªãªã¸ã³ã«ãªãªã¸ã³ã¨ãã¹ããªã¼ã¯ãã¾ããæ©å¯æ§ã®é«ããã­ã¥ã¡ã³ãã«å¯¾ãã¦ãã®ãããªããªã·ã¼ãè¨­å®ããå ´åã®å½±é¿ãæéã«æ¤è¨ãã¦ãã ããã OffsiteMiddleware ãã®ãªã¹ãã«å«ã¾ããã200ä»¥å¤ã®ã¹ãã¼ã¿ã»ã¹ã³ã¼ããæã¤ãã¹ã¦ã®ã¬ã¹ãã³ã¹ãæ¸¡ãã¾ãã ã¹ãã¼ã¿ã¹ã³ã¼ãã«é¢ä¿ãªãããã¹ã¦ã®ã¬ã¹ãã³ã¹ãæ¸¡ãã¾ãã ãªã¯ã¨ã¹ããçæããã¬ã¹ãã³ã¹ã®URLã«åºã¥ãã¦ããªã¯ã¨ã¹ã ``Referer`` ãããã¼ãçæãã¾ãã REFERER_ENABLED REFERRER_POLICY RefererMiddleware RefererMiddleware è¨­å® ä¸æ¹ãTLSã§ä¿è­·ãããã¯ã©ã¤ã¢ã³ãããä¿¡é ¼ã§ããªãå¯è½æ§ã®ããURLã¸ã®è¦æ±ã«ã¯ããªãã¡ã©ã¼æå ±ã¯å«ã¾ãã¾ããã Referer HTTPãããã¼ã¯éä¿¡ããã¾ããã ä¸æ¹ãTLSã§ä¿è­·ãããã¯ã©ã¤ã¢ã³ãããæ½å¨çã«ä¿¡é ¼ã§ããªãURLã¸ã®è¦æ±ã«ã¯ããªãã¡ã©ã¼æå ±ã¯å«ã¾ãã¾ããã Referer HTTPãããã¼ã¯éä¿¡ããã¾ããã ä¸æ¹ãTLSã§ä¿è­·ããããªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããæ½å¨çã«ä¿¡é ¼ã§ããªãURLã¸ã®ãªã¯ã¨ã¹ãã«ã¯ããªãã¡ã©ã¼æå ±ã¯å«ã¾ãã¾ããã `" no-referrer-when-downgrade "`_ ã®ããã«ããã©ã¦ã¶ã®W3Cæ¨å¥¨å¤ã§ãããScrapyã®ããã©ã«ãã®ãªãã¡ã©ã¼ã»ããªã·ã¼ã¯ããã¡ã¤ã³ãç°ãªã£ã¦ãã¦ãã ä»»æã® ``http(s)://`` ããç©ºã§ãªã  "Referer" ãããã¼ããã¹ã¦ã® ``https://`` ã«éä¿¡ãã¾ãã ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ æå­åå¤ "no-referrer-when-downgrade" ããªã·ã¼ã¯ãTLSã§ä¿è­·ãããç°å¢è¨­å®ãªãã¸ã§ã¯ãããæ½å¨çã«ä¿¡é ¼ã§ããURLã¸ã®ãªã¯ã¨ã¹ããããã³TLSã§ä¿è­·ããã¦ããªãã¯ã©ã¤ã¢ã³ãããã®ãªã¯ã¨ã¹ãã¨ã¨ãã«å®å¨ãªURLãéä¿¡ãã¾ãã ãªãªã¸ã³ã»ããªã·ã¼ã¯ãç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããåä¸ãªãªã¸ã³ã»ãªã¯ã¨ã¹ãã¨ã¯ã­ã¹ã»ãªãªã¸ã³ã»ãªã¯ã¨ã¹ãã®ä¸¡æ¹ãè¡ãã¨ãã«ããªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãã®ãªãªã¸ã³ã®ASCIIã·ãªã¢ã«åã®ã¿ããªãã¡ã©ã¼æå ±ã¨ãã¦éä¿¡ããããã¨ãæå®ãã¾ãã origin-when-cross-originããªã·ã¼ã¯ããªãã¡ã©ã¼ã¨ãã¦ä½¿ç¨ããããã«åå²(strip)ãããå®å¨ãªURLããç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããåä¸ãªãªã¸ã³ã»ãªã¯ã¨ã¹ããè¡ãã¨ãã«ãªãã¡ã©ã¼æå ±ã¨ãã¦éä¿¡ããããªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãã¯ãç¹å®ã®è¦æ±ã¯ã©ã¤ã¢ã³ãããã¯ã­ã¹ã»ãªãªã¸ã³ã»ãªã¯ã¨ã¹ããè¡ãã¨ãã«ããªãã¡ã©ã¼æå ±ã¨ãã¦éä¿¡ããã¾ãã "same-origin"ããªã·ã¼(åä¸ãªãªã¸ã³ã»ããªã·ã¼)ã¯ãç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããåä¸ãªãªã¸ã³ã»ãªã¯ã¨ã¹ããè¡ãã¨ãã«ããªãã¡ã©ã¼ã¨ãã¦ä½¿ç¨ããããã«åãé¤ãããå®å¨ãªURLããªãã¡ã©ã¼æå ±ã¨ãã¦éä¿¡ããããã¨ãæå®ãã¾ãã strict-originããªã·ã¼ã¯ããªã¯ã¨ã¹ããè¡ãã¨ãã«ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãã®çºä¿¡åã®ASCIIã·ãªã¢ã«åãéä¿¡ãã¾ãã-TLSã§ä¿è­·ãããç°å¢è¨­å®ãªãã¸ã§ã¯ãããæ½å¨çã«ä¿¡é ¼ã§ããURLã¸ãããã¦ãTLSã§ä¿è­·ããã¦ããªãç°å¢è¨­å®ãªãã¸ã§ã¯ãããä»»æã®ãªãªã¸ã³ã¸ã strict-origin-when-cross-originããªã·ã¼ã¯ããªãã¡ã©ã¼ã¨ãã¦ä½¿ç¨ããããã«åãé¤ãããå®å¨ãªURLããç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããåä¸ãªãªã¸ã³ã»ãªã¯ã¨ã¹ããè¡ãã¨ãã«ãªãã¡ã©ã¼æå ±ã¨ãã¦éä¿¡ããããã¨ãæå®ãã¾ããã¯ã­ã¹ã»ãªãªã¸ã³ã»ãªã¯ã¨ã¹ããè¡ãã¨ãã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãã®ãªãªã¸ã³: unsafe-urlããªã·ã¼ã¯ããªãã¡ã©ã¼ã¨ãã¦ä½¿ç¨ããããã«åå²(strip)ãããå®å¨ãªURLããç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããã®ã¯ã­ã¹ã»ãªãªã¸ã³ã»ãªã¯ã¨ã¹ãã¨åä¸ãªãªã¸ã³ã»ãªã¯ã¨ã¹ãã®ä¸¡æ¹ã¨ã¨ãã«éä¿¡ããããã¨ãæå®ãã¾ãã :class:`DepthMiddleware` ã¯æ¬¡ã®è¨­å®ã§è¨­å®ã§ãã¾ã(è©³ç´°ã«ã¤ãã¦ã¯è¨­å®ãã­ã¥ã¡ã³ããåç§ãã¦ãã ãã): :class:`UrlLengthMiddleware` ã¯æ¬¡ã®è¨­å®ã§æ§æ(configure)ã§ãã¾ã(è©³ç´°ã«ã¤ãã¦ã¯è¨­å®ãã­ã¥ã¡ã³ãããè¦§ãã ãã): :setting:`SPIDER_MIDDLEWARES` è¨­å®ã¯ãScrapyã§å®ç¾©ããã :setting:`SPIDER_MIDDLEWARES_BASE` è¨­å®ã¨ãã¼ã¸ãã(ãªã¼ãã¼ã©ã¤ãããããã¨ã¯ããã¾ãã)ãæå¹ãªããã«ã¦ã§ã¢ã®æçµã½ã¼ãã»ãªã¹ããåå¾ããããã«é åºå¤ã®æé ã«ã½ã¼ãããã¾ããæåãã¨ã³ã¸ã³ã«è¿ãæ¹ã§ã¹ãã¤ãã¼ã«è¿ãæ¹ãæå¾ã§ãã ã¤ã¾ããåããã«ã¦ã§ã¢ã® :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_input` ã¡ã½ããã¯ãããã«ã¦ã§ã¢ã®æé (100ã200ã300ãâ¦)ã§å¼ã³åºãããåããã«ã¦ã§ã¢ã® :meth:`~scrapy.spidermiddlewares.SpiderMiddleware.process_spider_output` ã¡ã½ããã¯ãéé ã«å¼ã³åºããã¾ãã ã¡ã¤ã³ã®ã¨ã³ããªã¼ãã¤ã³ãã¯ ``from_crawler`` ã¯ã©ã¹ã»ã¡ã½ããã§ãããã¯ :class:`~scrapy.crawler.Crawler` ã¤ã³ã¹ã¿ã³ã¹ãåãåãã¾ãã :class:`~scrapy.crawler.Crawler` ãªãã¸ã§ã¯ãã¯ããã¨ãã° :ref:`è¨­å®<topics-settings>` ã¸ã®ã¢ã¯ã»ã¹ãæä¾ãã¾ãã æãåç´ãªããªã·ã¼ã¯ãno-referrerãã§ããããã¯ãç¹å®ã®ãªã¯ã¨ã¹ãã»ã¯ã©ã¤ã¢ã³ãããã®ãªã¯ã¨ã¹ãã¨ã¨ãã«ãªãã¡ã©ã¼æå ±ãä»»æã®ãªãªã¸ã³(origin)ã«éä¿¡ããªããã¨ãæå®ãã¾ãããããã¼ã¯å®å¨ã«çç¥ããã¾ãã ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã¯ãScrapyã®ã¹ãã¤ãã¼å¦çã¡ã«ããºã ã¸ã®ããã¯ã®ãã¬ã¼ã ã¯ã¼ã¯ã§ãããã«ã¹ã¿ã æ©è½ããã©ã°ã¤ã³ãã¦ãå¦çã®ããã« :ref:`topics-spiders` ã«éä¿¡ãããã¬ã¹ãã³ã¹ãå¦çããã¹ãã¤ãã¼ããçæããããªã¯ã¨ã¹ãã¨ã¢ã¤ãã ãå¦çã§ãã¾ãã ããªã·ã¼ãæå®ããã¦ããªãå ´åãããã¯ã¦ã¼ã¶ã¼ã»ã¨ã¼ã¸ã§ã³ãã®ããã©ã«ãã®æ¯ãèãã§ãã ãã®ã¡ã½ããã¯ãå¦çã®ããã«ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ãééãã¦ã¹ãã¤ãã¼ã«éä¿¡ãããåã¬ã¹ãã³ã¹ã«å¯¾ãã¦å¼ã³åºããã¾ãã ãã®ã¡ã½ããã¯ãã¹ãã¤ãã¼ã¾ãã¯ã(ä»¥åã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã®) :meth:`process_spider_output` ã¡ã½ãããä¾å¤ãçºçãããã¨ãã«å¼ã³åºããã¾ãã ãã®ã¡ã½ããã¯ãã¬ã¹ãã³ã¹ãå¦çããå¾ãSpiderããè¿ãããçµæã§å¼ã³åºããã¾ãã ãã®ã¡ã½ããã¯ãã¹ãã¤ãã¼ã®éå§ãªã¯ã¨ã¹ãã§å¼ã³åºãããã¬ã¹ãã³ã¹ãé¢é£ä»ãããã¦ãããããªã¯ã¨ã¹ãã®ã¿(ã¢ã¤ãã ã§ã¯ãªã)ãè¿ãå¿è¦ããããã¨ãé¤ãã¦ã :meth:`process_spider_output` ã¡ã½ããã¨åæ§ã«æ©è½ãã¾ãã ãã®ããã«ã¦ã§ã¢ã¯ãã¹ãã¤ãã¼ã® :attr:`~crapy.spiders.Spider.allowed_domains` å±æ§ã«ãªãå¨ã¦ã®ãã¹ãåã®ãªã¯ã¨ã¹ããé¤å¤ãã¾ãããªãããªã¹ãåã®ãã¡ã¤ã³ã®ãã¹ã¦ã®ãµããã¡ã¤ã³ãè¨±å¯ããã¾ãã ä¾ãã°ãã«ã¼ã« ``www.example.org`` ã¯ ``bob.www.example.org`` ãè¨±å¯ãã¾ããã ``www2.example.com`` ã ``example.com`` ãè¨±å¯ãã¾ããã ãã®ææ¸ã§ã¯ãScrapyã«ä»å±ãããã¹ã¦ã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã»ã³ã³ãã¼ãã³ãã«ã¤ãã¦èª¬æãã¾ãããããã®ä½¿ç¨æ¹æ³ã¨ç¬èªã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã®ä½ææ¹æ³ã«ã¤ãã¦ã¯ã :ref:`ã¹ãã¤ãã¼ããã«ã¦ã§ã¢ä½¿ç¨ã¬ã¤ã<topics-spider-middleware>` ãåç§ãã¦ãã ããã ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã»ã³ã³ãã¼ãã³ããã¢ã¯ãã£ãã«ããã«ã¯ãããã :setting:`SPIDER_MIDDLEWARES` è¨­å®ã«è¿½å ãã¾ããããã¯ãã­ã¼ãããã«ã¦ã§ã¢ã»ã¯ã©ã¹ã»ãã¹ã§ãããå¤ãããã«ã¦ã§ã¢ã®é åºå¤ã§ããè¾æ¸ã§ãã ã­ã°ãéå°ãªãã¤ãºã§ãã£ã±ãã«ãªãã®ãé¿ããããããã£ã«ã¿ã¼ãããæ°ãããã¡ã¤ã³ãã¨ã«ãããã®ã¡ãã»ã¼ã¸ã®1ã¤ã®ã¿ãåºåãã¾ãããã®ããããã¨ãã°ã ``www.othersite.com`` ã¸ã®å¥ã®ãªã¯ã¨ã¹ãããã£ã«ã¿ãªã³ã°ãããå ´åãã­ã°ã¡ãã»ã¼ã¸ã¯åºåããã¾ããã ãããã ``someothersite.com`` ã¸ã®ãªã¯ã¨ã¹ãããã£ã«ã¿ã¼ãããã¨ãã¡ãã»ã¼ã¸ãåºåããã¾ã(ãã ãããã£ã«ã¿ã¼ãããæåã®ãªã¯ã¨ã¹ãã®ã¿)ã ããã«ã¦ã§ã¢ã«å²ãå½ã¦ãé åºãæ±ºå®ããã«ã¯ã :setting:`SPIDER_MIDDLEWARES_BASE` è¨­å®ãåç§ããããã«ã¦ã§ã¢ãæ¿å¥ããå ´æã«å¿ãã¦å¤ãé¸æãã¾ãã åããã«ã¦ã§ã¢ã¯ç°ãªãã¢ã¯ã·ã§ã³ãå®è¡ããããã«ã¦ã§ã¢ã¯é©ç¨ãããä»¥åã®(ã¾ãã¯å¾ç¶ã®)ããã«ã¦ã§ã¢ã«ä¾å­ããå¯è½æ§ããããããé åºã¯éè¦ã§ãã UrlLengthMiddleware ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ã§ãã®ã¡ã½ãããå®è£ããå ´åã(å¥åã«å¾ã£ã¦)å¸¸ã«åå¾©å¯è½ãªãã¸ã§ã¯ããè¿ãå¿è¦ãããã``start_requests`` ã¤ãã¬ã¼ã¿ãæ¶è²»ããªãã§ãã ããã Scrapyã¨ã³ã¸ã³ã¯ããªã¯ã¨ã¹ãéå§ãå¦çããè½åãããéã¯ãªã¯ã¨ã¹ãéå§æ±ãå¼ã¶ããã«è¨­è¨ããã¦ããããããªã¯ã¨ã¹ãéå§ã¤ãã¬ã¼ã¿ã¯ãã¹ãã¤ãã¼ãåæ­¢ããããã®ä»ã®æ¡ä»¶(æéå¶éãã¢ã¤ãã /ãã¼ã¸æ°ãªã©)ãããå ´åãäºå®ä¸ç¡éã«ãªãã¾ãã ã¹ãã¤ãã¼ãã«ãã¼ãããã¡ã¤ã³ã«å±ãã¦ããªããã¡ã¤ã³ã¸ã®ãªã¯ã¨ã¹ããã¹ãã¤ãã¼ãè¿ãã¨ããã®ããã«ã¦ã§ã¢ã¯ãä»¥ä¸ã«ä¼¼ããããã°ã»ã¡ãã»ã¼ã¸ãè¨é²ãã¾ã:: ãªãã¡ã©ã¼ã»ããã«ã¦ã§ã¢ãæå¹ã«ãããã©ããã ããªãèªèº«ã®ã¹ãã¤ãã¼ã»ããã«ã¦ã§ã¢ãæ¸ã :ref:`Request.meta <topics-request-meta>` ã®ç¹å¥ãª ``"referrer_policy"`` ã­ã¼ãä½¿ç¨ãã¦ã ``REFERRER_POLICY`` è¨­å®ã¨åãè¨±å®¹å¤ãä½¿ç¨ãã¦ããªã¯ã¨ã¹ããã¨ã«ãªãã¡ã©ã¼ã»ããªã·ã¼ãè¨­å®ãããã¨ãã§ãã¾ãã `"no-referrer"`_ `"no-referrer-when-downgrade"`_ `"origin"`_ `"origin-when-cross-origin"`_ `"same-origin"`_ ã¯ã­ã¹ã»ãã¡ã¤ã³ã»ãªã¯ã¨ã¹ãã®ãªãã¡ã©ã¼æå ±ãåé¤ããå ´åã¯ã `"same-origin"`_ ã®æ¹ãé©ãã¦ããå ´åãããã¾ãã `"strict-origin"`_ `"strict-origin-when-cross-origin"`_ `"unsafe-url"`_ ãªã¯ã¨ã¹ãã® "Referer" ãããã¼ãè¨­å®ããã¨ãã«é©ç¨ãã `Referrer Policy`_ ``"scrapy-default"`` (ããã©ã«ã) ãã®ããã«ã¦ã§ã¢ãä½¿ç¨ããã¯ã­ã¼ã©ã¼ ``scrapy.spidermiddlewares.referer.ReferrerPolicy`` ãµãã¯ã©ã¹ã¸ã®ãã¹ - ã«ã¹ã¿ã ã»ããªã·ã¼ã¾ãã¯çµã¿è¾¼ã¿ããªã·ã¼ã®ãããã(ä»¥ä¸ã®ã¯ã©ã¹ãåç§) TLSã§ä¿è­·ãããç°å¢è¨­å®ãªãã¸ã§ã¯ãããæ½å¨çã«ä¿¡é ¼ã§ããURLã¸ãããã¦ã TLSã§ä¿è­·ããã¦ããªãç°å¢è¨­å®ãªãã¸ã§ã¯ãããä»»æã®ãªãªã¸ã³(origin)ã¸ã https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer https://www.w3.org/TR/referrer-policy/#referrer-policy-no-referrer-when-downgrade https://www.w3.org/TR/referrer-policy/#referrer-policy-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-same-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-strict-origin-when-cross-origin https://www.w3.org/TR/referrer-policy/#referrer-policy-unsafe-url ã¾ãã¯ãæ¨æºã®W3Cå®ç¾©ã®æå­åå¤ã®ãããã ã¾ãã¯ç¹å¥ãª ``"scrapy-default"`` ã çºçããä¾å¤ å¦çä¸­ã®ã¬ã¹ãã³ã¹ ä¾å¤ãçºçããã¨ãã«å¦çããã¦ããã¬ã¹ãã³ã¹ ã¹ãã¤ãã¼ãããã®åºåãçæããã¬ã¹ãã³ã¹ ã¹ãã¤ãã¼ã«ãã£ã¦è¿ãããçµæ ãã®ã¬ã¹ãã³ã¹ãæå³ããã¹ãã¤ãã¼ éå§ãããªã¯ã¨ã¹ããå±ããã¹ãã¤ãã¼ ä¾å¤ãçºçãããã¹ãã¤ãã¼ çµæãå¦çããã¦ããã¹ãã¤ãã¼ ãªã¯ã¨ã¹ãã®éå§ 