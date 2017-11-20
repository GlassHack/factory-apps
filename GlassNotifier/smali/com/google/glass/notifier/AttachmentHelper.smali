.class public final Lcom/google/glass/notifier/AttachmentHelper;
.super Ljava/lang/Object;
.source "AttachmentHelper.java"


# static fields
.field private static final ASSET_NAME:Ljava/lang/String; = "icon"

.field private static final ATTACHMENT_FILENAME_FORMAT:Ljava/lang/String; = "notification_%s_%s_%d"

.field private static final ATTACHMENT_ID_FORMAT:Ljava/lang/String; = "notification_%s_%d"

.field private static final MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/notifier/AttachmentHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/notifier/AttachmentHelper;->TAG:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/google/glass/notifier/AttachmentHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/notifier/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBitmap(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2
    .param p0, "timelineItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    const-string v0, "icon"

    const-string v1, "image/png"

    invoke-static {p0, p1, v0, p2, v1}, Lcom/google/glass/notifier/AttachmentHelper;->addBitmap(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addBitmap(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "timelineItem"    # Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .param p1, "streamId"    # Ljava/lang/String;
    .param p2, "assetName"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/TimelineItem;->getModifiedTime()J

    move-result-wide v4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/google/glass/notifier/AttachmentHelper;->saveAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v6

    .line 43
    .local v6, "attachment":Lcom/google/googlex/glass/common/proto/nano/Attachment;
    if-nez v6, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-static {p0, v6}, Lcom/google/glass/timeline/TimelineItemUtils;->addAttachment(Lcom/google/googlex/glass/common/proto/nano/TimelineItem;Lcom/google/googlex/glass/common/proto/nano/Attachment;)V

    .line 47
    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static saveAttachment(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)Lcom/google/googlex/glass/common/proto/nano/Attachment;
    .locals 10
    .param p0, "streamId"    # Ljava/lang/String;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "creationTime"    # J

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v0

    .line 57
    .local v0, "cachedFilesManager":Lcom/google/glass/io/CachedFilesManager;
    const-string v3, "notification_%s_%s_%d"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v6

    aput-object p1, v4, v7

    .line 59
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "fileName":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/notifier/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Attempting to save attachment [streamId=%s, assetName=%s, fileName=%s]."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v6

    aput-object p1, v5, v7

    aput-object v1, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    sget-object v3, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    new-instance v4, Lcom/google/glass/notifier/AttachmentHelper$1;

    invoke-direct {v4, p2}, Lcom/google/glass/notifier/AttachmentHelper$1;-><init>(Landroid/graphics/Bitmap;)V

    .line 64
    invoke-virtual {v0, v3, v1, v4}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    move-result v2

    .line 78
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 81
    new-instance v3, Lcom/google/googlex/glass/common/proto/nano/Attachment;

    invoke-direct {v3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;-><init>()V

    .line 82
    invoke-virtual {v3, p3}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v3

    const-string v4, "notification_%s_%d"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    .line 83
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v3

    sget-object v4, Lcom/google/glass/io/FileType;->ATTACHMENT:Lcom/google/glass/io/FileType;

    .line 84
    invoke-virtual {v0, v4, v1}, Lcom/google/glass/io/CachedFilesManager;->getPath(Lcom/google/glass/io/FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/Attachment;

    move-result-object v3

    .line 87
    :goto_0
    return-object v3

    .line 86
    :cond_0
    sget-object v3, Lcom/google/glass/notifier/AttachmentHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to save bitmap to file cache, not attaching."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 v3, 0x0

    goto :goto_0
.end method
