.class public abstract Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "ImageProxyDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CACHE_TYPE:Lcom/google/glass/io/FileType;

.field public static final DIMENSION_NOT_SET:I = -0x1

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

.field private final cropType:I

.field private height:I

.field private imageUrl:Ljava/lang/String;

.field private final requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 34
    new-instance v0, Lcom/google/glass/protobuf/ProtoParser;

    new-instance v1, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;

    invoke-direct {v1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/protobuf/ProtoParser;-><init>(Lcom/google/glass/protobuf/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    .line 47
    sget-object v0, Lcom/google/glass/io/FileType;->PICTURE:Lcom/google/glass/io/FileType;

    sput-object v0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cropType"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    .line 80
    iput p3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    .line 81
    iput p4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    .line 82
    iput p5, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    .line 83
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    .line 84
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    .line 85
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 86
    return-void
.end method

.method private downloadImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 151
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;-><init>()V

    .line 153
    .local v0, "dimensions":Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 154
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    invoke-virtual {v0, v7}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 156
    :cond_0
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 157
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    invoke-virtual {v0, v7}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 159
    :cond_1
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;-><init>()V

    .line 160
    .local v3, "request":Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;
    iput-object v0, v3, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->requestedDimensions:Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest$RequestedDimensions;

    .line 161
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    .line 162
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;->setCropType(I)Lcom/google/googlex/glass/common/proto/nano/ImageDownloadRequest;

    .line 164
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Downloading image [filename=%s, request=%s]."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    .line 165
    invoke-static {v3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 164
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v4, 0x0

    .line 168
    .local v4, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;>;"
    new-instance v6, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 169
    .local v6, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 171
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v7, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 179
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    if-nez v7, :cond_3

    .line 180
    :cond_2
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No response - network may be disconnected"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Interrupted while downloading image from clientproxy"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;

    .line 186
    .local v5, "responseProto":Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->getStatus()I

    move-result v7

    if-eqz v7, :cond_4

    .line 188
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Server status: %s for: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const/4 v2, 0x0

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->getImage()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No image download data for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 200
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Image download cancelled for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const/4 v2, 0x0

    goto :goto_0

    .line 205
    :cond_6
    new-instance v7, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    const-string v9, "l"

    .line 208
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "b"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 210
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->getImage()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 206
    invoke-static {v9, v10, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 205
    invoke-virtual {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 213
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v8, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v7, v8, p1}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "filePath":Ljava/lang/String;
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Saving %s under %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v8, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/nano/ImageDownloadResponse;->getImage()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v9

    invoke-virtual {v7, v8, p1, v9}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    goto/16 :goto_0
.end method

.method public static getFilename(Ljava/lang/String;III)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "cropType"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 239
    .local v4, "name":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 241
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 243
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 244
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    .line 250
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 245
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public checkCache()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 106
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v5, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "filename":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v3, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ip"

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/String;
    .locals 5
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 132
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 133
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 144
    :goto_0
    return-object v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    invoke-direct {p0, v0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 121
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/io/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    .line 225
    iput p2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    .line 226
    return-void
.end method

.method protected setImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method
