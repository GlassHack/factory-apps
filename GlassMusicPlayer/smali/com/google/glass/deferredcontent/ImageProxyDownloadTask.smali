.class public abstract Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "SourceFile"


# static fields
.field public static final CACHE_TYPE:Lcom/google/glass/util/FileType;

.field public static final DIMENSION_NOT_SET:I = -0x1

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final cropType:I

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;

    invoke-direct {v1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 49
    sget-object v0, Lcom/google/glass/util/FileType;->PICTURE:Lcom/google/glass/util/FileType;

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    .line 82
    iput p3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    .line 83
    iput p4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    .line 84
    iput p5, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    .line 85
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 86
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    .line 87
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 88
    return-void
.end method

.method private downloadImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v3, -0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 153
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    .line 155
    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    if-eq v2, v3, :cond_0

    .line 156
    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 158
    :cond_0
    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    if-eq v2, v3, :cond_1

    .line 159
    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 161
    :cond_1
    new-instance v2, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;-><init>()V

    .line 162
    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 163
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 164
    iget v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setCropType(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 166
    sget-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Downloading image [filename=%s, request=%s]."

    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v8

    .line 167
    invoke-static {v2}, Lcom/google/glass/protobuf/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 166
    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    new-instance v3, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v3}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 171
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v4, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v5, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v0, v4, v2, v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 181
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v2

    if-nez v2, :cond_3

    .line 182
    :cond_2
    sget-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No response - network may be disconnected"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 218
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Interrupted while downloading image from clientproxy"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 177
    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    .line 188
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getStatus()I

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Server status: %s for: %s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v0, v4, v9

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 191
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    sget-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No image download data for %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 197
    goto :goto_0

    .line 200
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    sget-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Image download cancelled for %s"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 207
    :cond_6
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "l"

    .line 210
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "b"

    aput-object v6, v5, v8

    .line 212
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 208
    invoke-static {v4, v3, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Saving %s under %s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v0

    invoke-virtual {v2, v3, p1, v0}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-object v0, v1

    .line 218
    goto/16 :goto_0
.end method

.method public static getFilename(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 245
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 246
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkCache()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 108
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v3, v1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "ip"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 135
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-direct {p0, v0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 123
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    .line 227
    iput p2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    .line 228
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method
