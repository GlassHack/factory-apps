.class public Lcom/google/glass/html/ResourceLoadingWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ResourceLoadingWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/ResourceLoadingWebViewClient$6;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$BlockingDownloadTask;,
        Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_SCHEME:Ljava/lang/String; = "attachment"

.field private static final CID_SCHEME:Ljava/lang/String; = "cid"

.field private static final DATA_SCHEME:Ljava/lang/String; = "data"

.field private static final FILE_SCHEME:Ljava/lang/String; = "file"

.field public static final GLASS_CSS_URI:Ljava/lang/String; = "glass://GLASS_CSS"

.field private static final GLASS_SCHEME:Ljava/lang/String; = "glass"

.field protected static final HTTPS_SCHEME:Ljava/lang/String; = "https"

.field protected static final HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private final context:Landroid/content/Context;

.field private final fileWhitelist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

.field private final item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

.field private loadUncachedResources:Z

.field private final mapHelper:Lcom/google/glass/maps/MapHelper;

.field private final mosaicHelper:Lcom/google/glass/mosaic/MosaicHelper;

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

.field private final thumbnailer:Lcom/google/glass/html/Thumbnailer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p4, "mapHelper"    # Lcom/google/glass/maps/MapHelper;
    .param p5, "mosaicHelper"    # Lcom/google/glass/mosaic/MosaicHelper;
    .param p6, "thumbnailer"    # Lcom/google/glass/html/Thumbnailer;
    .param p7, "loadUncachedResources"    # Z
    .param p9, "resourceLoadedCallback"    # Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/maps/MapHelper;",
            "Lcom/google/glass/mosaic/MosaicHelper;",
            "Lcom/google/glass/html/Thumbnailer;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;",
            "Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p8, "resourceLoadTasks":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/deferredcontent/LoadingTask<*>;>;"
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 121
    iput-object p3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 122
    iput-object p4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    .line 123
    iput-object p5, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/mosaic/MosaicHelper;

    .line 124
    iput-object p6, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    .line 125
    iput-boolean p7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    .line 126
    iput-object p8, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    .line 127
    iput-object p9, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    .line 128
    new-instance v0, Lcom/google/glass/html/ImageUrlHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/html/ImageUrlHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

    .line 130
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    const-string v2, "application/octet-stream"

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/fonts/Roboto-Light.ttf"

    const-string v2, "application/octet-stream"

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "/system/fonts/Roboto-Thin.ttf"

    const-string v2, "application/octet-stream"

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->fileWhitelist:Ljava/util/Map;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/mosaic/MosaicHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mosaicHelper:Lcom/google/glass/mosaic/MosaicHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/util/CachedBitmapFactory;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/Thumbnailer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->thumbnailer:Lcom/google/glass/html/Thumbnailer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->resourceLoadedCallback:Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/html/ImageUrlHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->imageUrlHelper:Lcom/google/glass/html/ImageUrlHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->mapHelper:Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/html/ResourceLoadingWebViewClient;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/ResourceLoadingWebViewClient;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method private emptyResponse()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 265
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1d

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Ignoring non-uniquified URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-object v3

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "indexString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "URL is empty: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 300
    :cond_2
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Index out of bounds: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unable to parse attachment index: %s/%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    iget-object v7, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "index":I
    :cond_3
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v1

    goto :goto_0
.end method

.method private findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "cidString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 311
    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "URL is empty: %s/%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    :cond_0
    :goto_0
    return-object v3

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-static {v4}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v4

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 317
    iget-object v4, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 318
    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->item:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    iget-object v3, v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    aget-object v3, v3, v1

    goto :goto_0

    .line 316
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/glass/deferredcontent/DeferredInputStream;
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .prologue
    .line 328
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$2;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/deferredcontent/DeferredInputStream$Client;)V

    return-object v0
.end method

.method private loadCss()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 463
    const/4 v0, 0x0

    .line 468
    .local v0, "data":[B
    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->queryCss()[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 476
    :cond_0
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Load of CSS from %s failed, falling back to local built-in CSS."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "com.google.glass.sync"

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->getCssFromAssets()[B

    move-result-object v0

    .line 483
    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 484
    :cond_2
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Load of CSS completely failed."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->CSS_FAILED_LOAD:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 486
    new-array v0, v6, [B

    .line 488
    :cond_3
    return-object v0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error encoding CSS."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadHttpResource(Ljava/lang/String;)Lcom/google/glass/deferredcontent/DeferredInputStream;
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 357
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$3;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/deferredcontent/DeferredInputStream$Client;)V

    return-object v0
.end method

.method private loadMap(Ljava/lang/String;)Lcom/google/glass/deferredcontent/DeferredInputStream;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$4;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/deferredcontent/DeferredInputStream$Client;)V

    return-object v0
.end method

.method private loadMosaic(Landroid/net/Uri;)Lcom/google/glass/deferredcontent/DeferredInputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 418
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream;

    iget-object v1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    new-instance v2, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient$5;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/net/Uri;)V

    invoke-direct {v0, v1, v2}, Lcom/google/glass/deferredcontent/DeferredInputStream;-><init>(Landroid/content/Context;Lcom/google/glass/deferredcontent/DeferredInputStream$Client;)V

    return-object v0
.end method

.method private queryCss()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 492
    iget-object v0, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/stylesheet/StylesheetProviderConstants;->URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 494
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 496
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "css":Ljava/lang/String;
    const-string v0, "UTF-8"

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 506
    .end local v6    # "css":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 502
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 505
    :cond_1
    sget-object v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Query for Glass CSS failed."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    new-array v0, v8, [B

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method getCssFromAssets()[B
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 511
    const/4 v1, 0x0

    .line 513
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "base_style_kitkat_1.css"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 514
    invoke-static {v1}, Lcom/google/glass/io/InputStreamUtils;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 519
    const-string v3, "local CSS"

    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 521
    :goto_0
    return-object v2

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting %s file from assets."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "base_style_kitkat_1.css"

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    const-string v2, "local CSS"

    sget-object v3, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v2, v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 521
    new-array v2, v7, [B

    goto :goto_0

    .line 519
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    const-string v3, "local CSS"

    sget-object v4, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v3, v1, v4}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method

.method isWebViewDeallocated(Landroid/webkit/WebView;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 270
    instance-of v0, p1, Lcom/google/glass/html/PagedWebView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/glass/html/PagedWebView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/google/glass/html/PagedWebView;->isAllocated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkEnabledForUncachedResources(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadUncachedResources:Z

    .line 275
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 20
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 142
    invoke-virtual/range {p0 .. p1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->isWebViewDeallocated(Landroid/webkit/WebView;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 143
    sget-object v14, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "WebView is deallocated; not loading: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->emptyResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v14

    .line 260
    :goto_0
    return-object v14

    .line 147
    :cond_0
    new-instance v12, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v12}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 148
    .local v12, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual {v12}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, "data":Lcom/google/glass/deferredcontent/DeferredInputStream;
    const/4 v7, 0x0

    .line 152
    .local v7, "filePath":Ljava/lang/String;
    const/4 v4, 0x0

    .line 153
    .local v4, "contentType":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 154
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 155
    .local v13, "uri":Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, "scheme":Ljava/lang/String;
    const-string v14, "data"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 159
    const/4 v14, 0x0

    goto :goto_0

    .line 160
    :cond_1
    const-string v14, "file"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->fileWhitelist:Ljava/util/Map;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 163
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 164
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/html/ResourceLoadingWebViewClient;->fileWhitelist:Ljava/util/Map;

    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "contentType":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 198
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v4    # "contentType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 199
    move-object v8, v5

    .line 200
    .local v8, "finalData":Lcom/google/glass/deferredcontent/DeferredInputStream;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v14

    new-instance v15, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v15, v0, v1, v2, v8}, Lcom/google/glass/html/ResourceLoadingWebViewClient$1;-><init>(Lcom/google/glass/html/ResourceLoadingWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Lcom/google/glass/deferredcontent/DeferredInputStream;)V

    invoke-interface {v14, v15}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    .end local v8    # "finalData":Lcom/google/glass/deferredcontent/DeferredInputStream;
    :cond_3
    if-eqz v7, :cond_c

    .line 225
    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v9, "responseData":Ljava/io/InputStream;
    move-object v10, v9

    .line 229
    .end local v9    # "responseData":Ljava/io/InputStream;
    .local v10, "responseData":Ljava/io/InputStream;
    :goto_2
    if-eqz v10, :cond_f

    .line 230
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 232
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v14

    if-nez v14, :cond_d

    .line 233
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v10    # "responseData":Ljava/io/InputStream;
    .restart local v9    # "responseData":Ljava/io/InputStream;
    :goto_3
    :try_start_1
    invoke-static {v9}, Lcom/google/glass/html/ContentTypes;->sniff(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 242
    :goto_4
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 243
    sget-object v14, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Loaded: %s (%s) in %dms"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    const/16 v17, 0x1

    aput-object v4, v16, v17

    const/16 v17, 0x2

    .line 244
    invoke-virtual {v12}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 243
    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v14, Landroid/webkit/WebResourceResponse;

    const-string v15, ""

    invoke-direct {v14, v4, v15, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 248
    .end local v9    # "responseData":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 249
    .local v6, "e":Ljava/io/IOException;
    sget-object v14, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Error reading: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    move-object/from16 v0, v16

    invoke-interface {v14, v6, v15, v0}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    if-eqz v5, :cond_4

    .line 252
    :try_start_3
    invoke-virtual {v5}, Lcom/google/glass/deferredcontent/DeferredInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 260
    .end local v6    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->emptyResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v14

    goto/16 :goto_0

    .line 166
    .restart local v11    # "scheme":Ljava/lang/String;
    .restart local v13    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v14, "attachment"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForAttachmentUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v3

    .line 169
    .local v3, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v3, :cond_2

    .line 170
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/glass/deferredcontent/DeferredInputStream;

    move-result-object v5

    .line 171
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 173
    .end local v3    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_6
    const-string v14, "cid"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->findAttachmentForCidUri(Landroid/net/Uri;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v3

    .line 176
    .restart local v3    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-eqz v3, :cond_2

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Lcom/google/glass/deferredcontent/DeferredInputStream;

    move-result-object v5

    .line 178
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getContentType()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 180
    .end local v3    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_7
    const-string v14, "http"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v14, "https"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 181
    :cond_8
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadHttpResource(Ljava/lang/String;)Lcom/google/glass/deferredcontent/DeferredInputStream;

    move-result-object v5

    goto/16 :goto_1

    .line 182
    :cond_9
    const-string v14, "glass"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 183
    const-string v14, "glass://GLASS_CSS"

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 185
    new-instance v14, Landroid/webkit/WebResourceResponse;

    const-string v15, "text/css"

    const-string v16, ""

    new-instance v17, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {p0 .. p0}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadCss()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v14 .. v17}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 186
    :cond_a
    invoke-static {v13}, Lcom/google/glass/maps/MapHelper;->isGlassMapUri(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMap(Ljava/lang/String;)Lcom/google/glass/deferredcontent/DeferredInputStream;

    move-result-object v5

    .line 188
    const-string v4, "image/png"

    goto/16 :goto_1

    .line 189
    :cond_b
    invoke-static {v13}, Lcom/google/glass/mosaic/MosaicHelper;->isGlassMosaicUri(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/glass/html/ResourceLoadingWebViewClient;->loadMosaic(Landroid/net/Uri;)Lcom/google/glass/deferredcontent/DeferredInputStream;

    move-result-object v5

    .line 191
    const-string v4, "image/jpeg"

    goto/16 :goto_1

    .line 227
    .end local v11    # "scheme":Ljava/lang/String;
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_c
    move-object v9, v5

    .restart local v9    # "responseData":Ljava/io/InputStream;
    move-object v10, v9

    .end local v9    # "responseData":Ljava/io/InputStream;
    .restart local v10    # "responseData":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 237
    .end local v10    # "responseData":Ljava/io/InputStream;
    .restart local v9    # "responseData":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    .line 238
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_4
    sget-object v14, Lcom/google/glass/html/ResourceLoadingWebViewClient;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v15, "Could not sniff content type from data loaded for %s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    const/16 v17, 0x1

    .line 239
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    .line 238
    invoke-interface/range {v14 .. v16}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 253
    .end local v9    # "responseData":Ljava/io/InputStream;
    :catch_2
    move-exception v14

    goto/16 :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "responseData":Ljava/io/InputStream;
    :cond_d
    move-object v9, v10

    .end local v10    # "responseData":Ljava/io/InputStream;
    .restart local v9    # "responseData":Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v9    # "responseData":Ljava/io/InputStream;
    .restart local v10    # "responseData":Ljava/io/InputStream;
    :cond_e
    move-object v9, v10

    .end local v10    # "responseData":Ljava/io/InputStream;
    .restart local v9    # "responseData":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v9    # "responseData":Ljava/io/InputStream;
    .restart local v10    # "responseData":Ljava/io/InputStream;
    :cond_f
    move-object v9, v10

    .end local v10    # "responseData":Ljava/io/InputStream;
    .restart local v9    # "responseData":Ljava/io/InputStream;
    goto/16 :goto_5
.end method
