.class Lcom/google/android/wearable/app/WearAssetHelper;
.super Ljava/lang/Object;
.source "WearAssetHelper.java"


# static fields
.field private static final WEAR_ATTACHMENT_FILENAME_FORMAT:Ljava/lang/String; = "wear_%s_%s_%d"

.field private static final WEAR_ATTACHMENT_ID_FORMAT:Ljava/lang/String; = "wear_%s_%d"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/wearable/app/WearAssetHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 0
    .param p1, "assetManager"    # Lcom/google/android/wearable/gmsclient/AssetManager;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/wearable/app/WearAssetHelper;->assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    .line 50
    iput-object p2, p0, Lcom/google/android/wearable/app/WearAssetHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 51
    return-void
.end method


# virtual methods
.method public addBitmap(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "streamId"    # Ljava/lang/String;
    .param p3, "assetName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 66
    if-nez p4, :cond_0

    move-object v0, v8

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getModifiedTime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/wearable/app/WearAssetHelper;->saveAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v7

    .line 72
    .local v7, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    if-nez v7, :cond_1

    move-object v0, v8

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p1, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V

    .line 76
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitmap(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-object v1

    .line 124
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/wearable/app/WearAssetHelper;->assetManager:Lcom/google/android/wearable/gmsclient/AssetManager;

    invoke-virtual {v2, p1}, Lcom/google/android/wearable/gmsclient/AssetManager;->getBitmapForAsset(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/google/android/wearable/app/WearAssetHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "RemoteException while getting Bitmap for asset"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lcom/google/android/wearable/app/WearAssetHelper;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WEAR_ASSET_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method public saveAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    .locals 8
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "assetName"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "creationTime"    # J

    .prologue
    .line 86
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 87
    .local v0, "cachedFilesManager":Lcom/google/glass/util/CachedFilesManager;
    const-string/jumbo v3, "wear_%s_%s_%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    .line 88
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "fileName":Ljava/lang/String;
    sget-object v3, Lcom/google/android/wearable/app/WearAssetHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attempting to save wear attachment [streamId=%s, assetName=%s, fileName=%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v3, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    new-instance v4, Lcom/google/android/wearable/app/WearAssetHelper$1;

    invoke-direct {v4, p0, p3}, Lcom/google/android/wearable/app/WearAssetHelper$1;-><init>(Lcom/google/android/wearable/app/WearAssetHelper;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v1, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v2

    .line 102
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 105
    new-instance v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;-><init>()V

    invoke-virtual {v3, p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v3

    const-string/jumbo v4, "wear_%s_%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    .line 106
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v3

    sget-object v4, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 107
    invoke-virtual {v0, v4, v1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    move-result-object v3

    .line 110
    :goto_0
    return-object v3

    .line 109
    :cond_0
    sget-object v3, Lcom/google/android/wearable/app/WearAssetHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to save wear bitmap to file cache, not attaching."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v3, 0x0

    goto :goto_0
.end method
