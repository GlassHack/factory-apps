.class public Lcom/google/glass/util/VideoThumbnailHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

.field private final cameraUtils:Lcom/google/glass/camera/CameraUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/glass/camera/CameraUtils;

    invoke-direct {v0}, Lcom/google/glass/camera/CameraUtils;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cameraUtils:Lcom/google/glass/camera/CameraUtils;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/util/CachedFilesManager;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/util/VideoThumbnailHelper;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 29
    iput-object p2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    .line 30
    return-void
.end method

.method private getVideoFilePath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/util/FileType;->ATTACHMENT:Lcom/google/glass/util/FileType;

    .line 141
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getId()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 129
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 46
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 48
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    sget-object v0, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to find thumbnail filename in attachment: %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 63
    :goto_1
    return-object v0

    .line 56
    :cond_2
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_3
    iget-object v2, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v4, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 64
    invoke-virtual {v3, v4, v0}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v0, v5, v1}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public loadThumbnail(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 84
    iget-object v1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->getThumbnailFilename(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    sget-object v1, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to find thumbnail filename in attachment: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    invoke-virtual {v1, v3, v2}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/FileType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 95
    invoke-direct {p0, p1}, Lcom/google/glass/util/VideoThumbnailHelper;->getVideoFilePath(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Ljava/lang/String;

    move-result-object v3

    .line 96
    if-nez v3, :cond_3

    .line 97
    sget-object v1, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to find video file path in attachment: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/glass/util/VideoThumbnailHelper;->createThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    if-nez v1, :cond_4

    .line 103
    sget-object v1, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to create thumbnail for video: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_4
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cameraUtils:Lcom/google/glass/camera/CameraUtils;

    iget-object v3, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/glass/camera/CameraUtils;->saveThumbnailToCachedFiles(Lcom/google/glass/util/CachedFilesManager;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    sget-object v0, Lcom/google/glass/util/VideoThumbnailHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to save thumbnail to: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedBitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/util/VideoThumbnailHelper;->cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;

    sget-object v3, Lcom/google/glass/util/FileType;->THUMBNAIL:Lcom/google/glass/util/FileType;

    .line 116
    invoke-virtual {v1, v3, v2}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1, v5, p2}, Lcom/google/glass/util/CachedBitmapFactory;->decodeFile(Ljava/lang/String;ZLcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
