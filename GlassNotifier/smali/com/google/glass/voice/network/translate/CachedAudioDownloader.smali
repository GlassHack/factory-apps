.class public Lcom/google/glass/voice/network/translate/CachedAudioDownloader;
.super Ljava/lang/Object;
.source "CachedAudioDownloader.java"


# static fields
.field static final CACHE_FILE_TYPE:Lcom/google/glass/io/FileType;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final FILENAME_PREFIX:Ljava/lang/String; = "tts_"

.field private static final FILENAME_SUFFIX:Ljava/lang/String; = ".dat"

.field private static final INDEX_PARAM:Ljava/lang/String; = "idx"

.field private static final REQUEST_DEFAULT_QUERY_PARAMETERS:Ljava/lang/String; = "ie=utf-8&client=glass"

.field private static final REQUEST_PATH:Ljava/lang/String; = "/translate_tts"

.field private static final TARGET_LANG_PARAM:Ljava/lang/String; = "tl"

.field private static final TEXT_LENGTH_PARAM:Ljava/lang/String; = "textlen"

.field private static final TOTAL_PARAM:Ljava/lang/String; = "total"

.field private static final TRANSLATE_HOST:Ljava/lang/String; = "translate.google.com"

.field private static final TRANSLATE_QUERY_PARAM:Ljava/lang/String; = "q"

.field private static final TRANSLATE_SCHEME:Ljava/lang/String; = "https"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/glass/io/FileType;->AUDIO:Lcom/google/glass/io/FileType;

    sput-object v0, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->CACHE_FILE_TYPE:Lcom/google/glass/io/FileType;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private buildDownloadUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "total"    # I
    .param p4, "index"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 100
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "translate.google.com"

    .line 101
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/translate_tts"

    .line 102
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ie=utf-8&client=glass"

    .line 103
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tl"

    .line 105
    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "total"

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "idx"

    .line 107
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "textlen"

    if-nez p1, :cond_0

    .line 109
    const-string v1, "0"

    .line 108
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 116
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "fileName":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->CACHE_FILE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v0, v3, v1}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "filePath":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->CACHE_FILE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v0, v3, v1}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Lcom/google/glass/voice/network/translate/CachedAudioDownloader$1;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader$1;-><init>(Lcom/google/glass/voice/network/translate/CachedAudioDownloader;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/io/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 126
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getHeaders()Ljava/util/Map;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 138
    .local v0, "defaultHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/google/glass/net/UserAgentProvider;->getInstance()Lcom/google/glass/net/UserAgentProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/net/UserAgentProvider;->get()Lcom/google/glass/net/UserAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method


# virtual methods
.method public getAudioFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "total"    # I
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 63
    .local v5, "ttsFile":Ljava/io/File;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_5

    .line 65
    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->buildDownloadUri(Ljava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "ttsRequestUri":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {v7}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v1

    .line 69
    .local v1, "dispatcher":Lcom/google/glass/net/HttpRequestDispatcher;
    invoke-static {}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getHeaders()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v6, v7, v8}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/PendingHttpRequest;

    move-result-object v3

    .line 71
    .local v3, "request":Lcom/google/glass/net/PendingHttpRequest;
    const/4 v4, 0x0

    .line 73
    .local v4, "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/glass/net/PendingHttpRequest;->execute()Lcom/google/glass/net/SimplifiedHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 78
    iget-object v7, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v7, v7

    if-nez v7, :cond_2

    .line 79
    :cond_1
    new-instance v7, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;

    const-string v8, "Empty TTS response"

    invoke-direct {v7, v8}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;

    invoke-direct {v7, v2}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 80
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    iget v7, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0x194

    if-ne v7, v8, :cond_3

    .line 81
    new-instance v7, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;

    const-string v8, "TTS not found"

    invoke-direct {v7, v8}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_3
    iget v7, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_4

    .line 83
    new-instance v7, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;

    iget v8, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v9, 0x22

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "TTS Server error code: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_4
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 87
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    sget-object v7, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->CACHE_FILE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v4, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    .line 88
    invoke-static {v9}, Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v9

    .line 87
    invoke-virtual {v0, v7, v8, v9}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 92
    .end local v0    # "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    .end local v1    # "dispatcher":Lcom/google/glass/net/HttpRequestDispatcher;
    .end local v3    # "request":Lcom/google/glass/net/PendingHttpRequest;
    .end local v4    # "response":Lcom/google/glass/net/SimplifiedHttpResponse;
    .end local v6    # "ttsRequestUri":Ljava/lang/String;
    :cond_5
    return-object v5
.end method

.method getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 131
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "tts_"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, ".dat"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
