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
.field public static final CACHE_TYPE:Lcom/google/glass/util/FileType;

.field public static final DIMENSION_NOT_SET:I = -0x1

.field private static final PARSER:Lcom/google/glass/protobuf/ProtoParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/protobuf/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;",
            ">;"
        }
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cropType"    # I

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
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 153
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    .line 155
    .local v0, "dimensions":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 156
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    invoke-virtual {v0, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->setWidthPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 158
    :cond_0
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 159
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    invoke-virtual {v0, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->setHeightPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 161
    :cond_1
    new-instance v3, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;-><init>()V

    .line 162
    .local v3, "request":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
    invoke-virtual {v3, v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setRequestedDimensions(Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 163
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 164
    iget v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-virtual {v3, v7}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;->setCropType(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;

    .line 166
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Downloading image [filename=%s, request=%s]."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    .line 167
    invoke-static {v3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->asciiDebug(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\n"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 166
    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/4 v4, 0x0

    .line 170
    .local v4, "response":Lcom/google/glass/net/ProtoResponse;, "Lcom/google/glass/net/ProtoResponse<Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;>;"
    new-instance v6, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v6}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 171
    .local v6, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 173
    :try_start_0
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v8, Lcom/google/glass/net/ServerConstants$Action;->DOWNLOAD_IMAGE:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v9, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->PARSER:Lcom/google/glass/protobuf/ProtoParser;

    invoke-virtual {v7, v8, v3, v9}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/protobuf/ProtoParser;)Lcom/google/glass/net/ProtoResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 179
    invoke-virtual {v6}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 181
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v7

    if-nez v7, :cond_3

    .line 182
    :cond_2
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No response - network may be disconnected"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const/4 v2, 0x0

    .line 218
    :goto_0
    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Interrupted while downloading image from clientproxy"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/net/ProtoResponse;->getResponseProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;

    .line 188
    .local v5, "responseProto":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getStatus()I

    move-result v7

    if-eqz v7, :cond_4

    .line 190
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Server status: %s for: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getStatus()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/util/ArrayUtils;->isEmpty([B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 196
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "No image download data for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v2, 0x0

    goto :goto_0

    .line 200
    :cond_5
    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 202
    sget-object v7, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Image download cancelled for %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    const/4 v2, 0x0

    goto :goto_0

    .line 207
    :cond_6
    new-instance v7, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->IMAGE_DOWNLOAD_LATENCY:Lcom/google/glass/userevent/UserEventAction;

    const-string v9, "l"

    .line 210
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

    .line 212
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 208
    invoke-static {v9, v10, v11}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-virtual {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 215
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v8, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v7, v8, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
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

    .line 217
    iget-object v7, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v8, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadResponse;->getImage()[B

    move-result-object v9

    invoke-static {v9}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v9

    invoke-virtual {v7, v8, p1, v9}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

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
    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 241
    .local v4, "name":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 243
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 245
    .local v1, "digest":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 246
    .local v0, "bi":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 247
    .end local v0    # "bi":Ljava/math/BigInteger;
    .end local v1    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 249
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

    .line 107
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 108
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v5, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "filename":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v2, v3, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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
    .locals 5
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 134
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 135
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-direct {p0, v0}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->downloadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected loadContentFromCache()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 123
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->width:I

    iget v3, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->height:I

    iget v4, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cropType:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->getFilename(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v2, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->CACHE_TYPE:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

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
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/deferredcontent/ImageProxyDownloadTask;->imageUrl:Ljava/lang/String;

    return-object p1
.end method
