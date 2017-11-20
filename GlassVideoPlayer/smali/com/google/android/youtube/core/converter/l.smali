.class public final Lcom/google/android/youtube/core/converter/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/xml/sax/Attributes;

.field private static final c:Ljava/util/Map;


# instance fields
.field private final b:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/core/converter/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/n;-><init>(Lcom/google/android/youtube/core/converter/n;)V

    sput-object v0, Lcom/google/android/youtube/core/converter/l;->a:Lorg/xml/sax/Attributes;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/l;->c:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "features can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/l;->b:Ljavax/xml/parsers/SAXParserFactory;

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    return-void

    .line 139
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    iget-object v3, p0, Lcom/google/android/youtube/core/converter/l;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :catch_2
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SAX initilization error"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()Lcom/google/android/youtube/core/converter/l;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/youtube/core/converter/l;

    sget-object v1, Lcom/google/android/youtube/core/converter/l;->c:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/l;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static synthetic b()Lorg/xml/sax/Attributes;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/youtube/core/converter/l;->a:Lorg/xml/sax/Attributes;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    const-string v0, "input can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "rules can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/l;->b:Ljavax/xml/parsers/SAXParserFactory;

    monitor-enter v1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/l;->b:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    new-instance v1, Lcom/google/android/youtube/core/converter/o;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/core/converter/o;-><init>(Lcom/google/android/youtube/core/converter/c;)V

    .line 172
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 173
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 174
    iget-object v0, v1, Lcom/google/android/youtube/core/converter/o;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/google/android/youtube/core/converter/InvalidFormatException;

    const-string v1, "XML is well-formed but invalid"

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    :catch_1
    move-exception v0

    .line 182
    new-instance v1, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_0
    :try_start_4
    iget-object v0, v1, Lcom/google/android/youtube/core/converter/o;->a:Ljava/lang/Object;
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v0
.end method
