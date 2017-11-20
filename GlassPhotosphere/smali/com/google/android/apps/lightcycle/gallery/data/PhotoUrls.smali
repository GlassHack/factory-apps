.class public Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
.super Ljava/lang/Object;
.source "PhotoUrls.java"


# static fields
.field private static final PANO_VIEWER_BASE_URL:Ljava/lang/String; = "https://panoramas.googleplex.com"

.field private static final PANO_VIEWER_SHORT_BASE_URL:Ljava/lang/String; = "https://panoramas.googleplex.com/s/"

.field private static final PANO_VIEWER_VIEW_BASE_URL:Ljava/lang/String; = "https://panoramas.googleplex.com/v?pano="

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final baseUrl:Ljava/lang/String;

.field public final editUrl:Ljava/lang/String;

.field public final photoId:Ljava/lang/String;

.field private shortUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "editUrl"    # Ljava/lang/String;
    .param p3, "photoId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->baseUrl:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->editUrl:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->photoId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->convertShortUrlToDogfoodShortUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->shortUrl:Ljava/lang/String;

    return-object p1
.end method

.method private static convertShortUrlToDogfoodShortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "shortUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Short URL is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/util/LG;->d(Ljava/lang/String;)V

    .line 155
    if-nez p0, :cond_0

    .line 156
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    const-string v3, "Short URL is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-object v1

    .line 159
    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 160
    .local v0, "lastSlashPos":I
    if-gez v0, :cond_1

    .line 161
    sget-object v2, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goo.gl short URL invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://panoramas.googleplex.com/s/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseFromXml(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;
    .locals 22
    .param p0, "responseXml"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 58
    .local v5, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 59
    .local v4, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v12, Lorg/xml/sax/InputSource;

    invoke-direct {v12}, Lorg/xml/sax/InputSource;-><init>()V

    .line 60
    .local v12, "is":Lorg/xml/sax/InputSource;
    new-instance v18, Ljava/io/StringReader;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 61
    invoke-virtual {v4, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 64
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string v18, "content"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 65
    .local v3, "contents":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .line 66
    .local v2, "baseUrl":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 67
    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 68
    .local v14, "node":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "src"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 69
    .local v17, "source":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_2

    .line 70
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 76
    .end local v14    # "node":Lorg/w3c/dom/Node;
    .end local v17    # "source":Lorg/w3c/dom/Node;
    :cond_0
    const-string v18, "link"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 77
    .local v13, "links":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 78
    .local v8, "editUrl":Ljava/lang/String;
    const/4 v10, 0x0

    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 79
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 80
    .restart local v14    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "rel"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 81
    .local v16, "rel":Lorg/w3c/dom/Node;
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v18

    const-string v19, "edit"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 82
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    const-string v19, "href"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 83
    .local v9, "href":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_3

    .line 84
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 91
    .end local v9    # "href":Lorg/w3c/dom/Node;
    .end local v14    # "node":Lorg/w3c/dom/Node;
    .end local v16    # "rel":Lorg/w3c/dom/Node;
    :cond_1
    const-string v15, ""

    .line 92
    .local v15, "photoId":Ljava/lang/String;
    const-string v18, "gphoto:id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 93
    .local v11, "ids":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 94
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v15

    .line 99
    :goto_2
    new-instance v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v8, v15}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v2    # "baseUrl":Ljava/lang/String;
    .end local v3    # "contents":Lorg/w3c/dom/NodeList;
    .end local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "editUrl":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ids":Lorg/w3c/dom/NodeList;
    .end local v12    # "is":Lorg/xml/sax/InputSource;
    .end local v13    # "links":Lorg/w3c/dom/NodeList;
    .end local v15    # "photoId":Ljava/lang/String;
    :goto_3
    return-object v18

    .line 66
    .restart local v2    # "baseUrl":Ljava/lang/String;
    .restart local v3    # "contents":Lorg/w3c/dom/NodeList;
    .restart local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v10    # "i":I
    .restart local v12    # "is":Lorg/xml/sax/InputSource;
    .restart local v14    # "node":Lorg/w3c/dom/Node;
    .restart local v17    # "source":Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 78
    .end local v17    # "source":Lorg/w3c/dom/Node;
    .restart local v8    # "editUrl":Ljava/lang/String;
    .restart local v13    # "links":Lorg/w3c/dom/NodeList;
    .restart local v16    # "rel":Lorg/w3c/dom/Node;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 96
    .end local v14    # "node":Lorg/w3c/dom/Node;
    .end local v16    # "rel":Lorg/w3c/dom/Node;
    .restart local v11    # "ids":Lorg/w3c/dom/NodeList;
    .restart local v15    # "photoId":Ljava/lang/String;
    :cond_4
    sget-object v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "We did not find exactly one gphoto:id tag. (Found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 100
    .end local v2    # "baseUrl":Ljava/lang/String;
    .end local v3    # "contents":Lorg/w3c/dom/NodeList;
    .end local v4    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "editUrl":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ids":Lorg/w3c/dom/NodeList;
    .end local v12    # "is":Lorg/xml/sax/InputSource;
    .end local v13    # "links":Lorg/w3c/dom/NodeList;
    .end local v15    # "photoId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 101
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    new-instance v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :catch_1
    move-exception v7

    .line 103
    .local v7, "e":Lorg/xml/sax/SAXException;
    sget-object v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 104
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v7

    .line 105
    .local v7, "e":Ljava/io/IOException;
    sget-object v18, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized getShortDogfoodUrl(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/lightcycle/util/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "callback":Lcom/google/android/apps/lightcycle/util/Callback;, "Lcom/google/android/apps/lightcycle/util/Callback<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->shortUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->shortUrl:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://panoramas.googleplex.com/v?pano="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "urlToShare":Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;Lcom/google/android/apps/lightcycle/util/Callback;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/util/UrlShortener;->createShortUrlAsync(Ljava/lang/String;Lcom/google/android/apps/lightcycle/util/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "urlToShare":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
