.class public final Lcom/a/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/a/a/a/l;->a:Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/a/a/a/l;->a()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/a/a/b/c;)Lcom/a/a/c;
    .locals 4

    .prologue
    .line 74
    invoke-static {p0}, Lcom/a/a/a/f;->a(Ljava/lang/Object;)V

    .line 75
    new-instance v2, Lcom/a/a/b/c;

    invoke-direct {v2}, Lcom/a/a/b/c;-><init>()V

    .line 77
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0, v2}, Lcom/a/a/a/l;->a(Ljava/io/InputStream;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {v2}, Lcom/a/a/b/c;->a()Z

    move-result v1

    .line 80
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v1, v3}, Lcom/a/a/a/l;->a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    const/4 v0, 0x1

    aget-object v0, v3, v0

    sget-object v1, Lcom/a/a/a/l;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 85
    const/4 v0, 0x0

    aget-object v0, v3, v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/a/a/a/g;->a(Lorg/w3c/dom/Node;)Lcom/a/a/a/k;

    move-result-object v1

    .line 86
    const/4 v0, 0x2

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/a/a/a/k;->a(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Lcom/a/a/b/c;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    invoke-static {v1, v2}, Lcom/a/a/a/p;->a(Lcom/a/a/a/k;Lcom/a/a/b/c;)Lcom/a/a/c;

    move-result-object v0

    .line 101
    :goto_1
    return-object v0

    .line 77
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/a/b;

    check-cast p0, [B

    invoke-direct {v0, p0}, Lcom/a/a/a/b;-><init>([B)V

    invoke-static {v0, v2}, Lcom/a/a/a/l;->a(Lcom/a/a/a/b;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/a/a/a/l;->a(Ljava/lang/String;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 95
    goto :goto_1

    .line 101
    :cond_3
    new-instance v0, Lcom/a/a/a/k;

    invoke-direct {v0}, Lcom/a/a/a/k;-><init>()V

    goto :goto_1
.end method

.method private static a()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 394
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 395
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 396
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 402
    :try_start_0
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/a/a/a/b;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;
    .locals 5

    .prologue
    .line 186
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/a/a/a/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 189
    :try_start_0
    invoke-static {v0}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lcom/a/a/b;->a()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/a/a/b;->a()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_3

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0}, Lcom/a/a/a/e;->a(Lcom/a/a/a/b;)Lcom/a/a/a/b;

    move-result-object p0

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/a/a/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :try_start_1
    invoke-virtual {p0}, Lcom/a/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Lcom/a/a/a/c;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/a/a/a/b;->a()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/a/a/a/c;-><init>(Ljava/io/Reader;)V

    .line 209
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    new-instance v1, Lcom/a/a/b;

    const-string v2, "Unsupported Encoding"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 218
    :cond_2
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/a/a/a/b;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 219
    invoke-static {v0}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    throw v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/a/a/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 162
    :cond_0
    :try_start_0
    new-instance v0, Lcom/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/a/a/a/b;-><init>(Ljava/io/InputStream;)V

    .line 163
    invoke-static {v0, p1}, Lcom/a/a/a/l;->a(Lcom/a/a/a/b;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/a/a/b;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/a/a/b/c;)Lorg/w3c/dom/Document;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 244
    :try_start_0
    invoke-static {v0}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Lcom/a/a/b;->a()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Lcom/a/a/a/c;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/a/a/a/c;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-static {v0}, Lcom/a/a/a/l;->a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_0
    throw v0
.end method

.method private static a(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 4

    .prologue
    .line 271
    :try_start_0
    sget-object v0, Lcom/a/a/a/l;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 273
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Lcom/a/a/b;

    const-string v2, "XML parsing failure"

    const/16 v3, 0xc9

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 279
    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lcom/a/a/b;

    const-string v2, "XML Parser not correctly configured"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 284
    :catch_2
    move-exception v0

    .line 286
    new-instance v1, Lcom/a/a/b;

    const-string v2, "Error reading the XML-file"

    const/16 v3, 0xcc

    invoke-direct {v1, v2, v3, v0}, Lcom/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x0

    .line 326
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    .line 327
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 329
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 330
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v7, v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    const-string v5, "xpacket"

    if-ne v0, v5, :cond_1

    .line 334
    if-eqz p2, :cond_0

    .line 336
    const/4 v0, 0x2

    check-cast v1, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 327
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 339
    :cond_1
    const/4 v0, 0x3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v0, v5, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v7, v0, :cond_0

    .line 342
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    .line 344
    const-string v6, "xmpmeta"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "xapmeta"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "adobe:ns:meta/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move p1, v2

    move-object p0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_3
    if-nez p1, :cond_5

    const-string v6, "RDF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    if-eqz p2, :cond_4

    .line 361
    aput-object v1, p2, v2

    .line 362
    const/4 v0, 0x1

    sget-object v1, Lcom/a/a/a/l;->a:Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 383
    :cond_4
    :goto_2
    return-object p2

    .line 369
    :cond_5
    invoke-static {v1, p1, p2}, Lcom/a/a/a/l;->a(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 372
    goto :goto_2

    .line 383
    :cond_6
    const/4 p2, 0x0

    goto :goto_2
.end method
