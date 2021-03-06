.class public Lcom/google/glass/timeline/MediaStoreFileManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "null contentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/MediaStoreFileManager$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/MediaStoreFileManager;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public removeFileFromMediaStore(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->hasClientCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 44
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 48
    const-string v3, "_data=?"

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 51
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 53
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 54
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 55
    int-to-long v3, v0

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 56
    iget-object v3, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 59
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 37
    :cond_3
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 59
    :cond_4
    if-eqz v2, :cond_0

    .line 60
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 59
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method
