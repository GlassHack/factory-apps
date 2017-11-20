.class public Lcom/google/glass/util/VideoThumbnailHelper;
.super Ljava/lang/Object;
.source "VideoThumbnailHelper.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/io/CachedFilesManager;)V
    .locals 0
    .param p1, "cachedBitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p2, "cachedFilesManager"    # Lcom/google/glass/io/CachedFilesManager;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 29
    iput-object p2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    .line 30
    return-void
.end method

.method private getVideoFilePath(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;
    .locals 3
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v1, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    .line 139
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 127
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedThumbnail(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 44
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 46
    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    if-nez v2, :cond_1

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cache not initialized."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    .local v0, "thumbnailFilename":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    sget-object v2, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to find thumbnail filename in attachment: %s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :goto_1
    return-object v1

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v4, Lcom/google/glass/io/FileType;->THUMBNAIL:Lcom/google/glass/io/FileType;

    .line 62
    invoke-virtual {v3, v4, v0}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3, v5, v1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public loadThumbnail(Lcom/google/googlex/glass/common/proto/nano/Attachment;Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .param p2, "isCancelled"    # Lcom/google/glass/util/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 82
    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    if-nez v5, :cond_1

    .line 83
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cache not initialized."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "thumbnailFilename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to find thumbnail filename in attachment: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 113
    :cond_2
    :goto_0
    return-object v1

    .line 92
    :cond_3
    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v6, Lcom/google/glass/io/FileType;->THUMBNAIL:Lcom/google/glass/io/FileType;

    invoke-virtual {v5, v6, v2}, Lcom/google/glass/io/CachedFilesManager;->contains(Lcom/google/glass/io/FileType;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 93
    invoke-direct {p0, p1}, Lcom/google/glass/util/VideoThumbnailHelper;->getVideoFilePath(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "videoFilePath":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 95
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to find video file path in attachment: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 96
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/glass/util/VideoThumbnailHelper;->createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    if-nez v1, :cond_5

    .line 101
    sget-object v5, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Failed to create thumbnail for video: %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v4

    .line 102
    goto :goto_0

    .line 105
    :cond_5
    invoke-static {}, Lcom/google/glass/graphics/ThumbnailHelper$Provider;->getInstance()Lcom/google/glass/graphics/ThumbnailHelper$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/graphics/ThumbnailHelper$Provider;->get()Lcom/google/glass/graphics/ThumbnailHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    invoke-virtual {v4, v5, v1, v2}, Lcom/google/glass/graphics/ThumbnailHelper;->saveThumbnailToCachedFiles(Lcom/google/glass/io/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    sget-object v4, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to save thumbnail to: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v2, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v3    # "videoFilePath":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v5, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/io/CachedFilesManager;

    sget-object v6, Lcom/google/glass/io/FileType;->THUMBNAIL:Lcom/google/glass/io/FileType;

    .line 114
    invoke-virtual {v5, v6, v2}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5, v8, p2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
