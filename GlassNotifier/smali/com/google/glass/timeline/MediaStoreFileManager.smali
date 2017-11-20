.class public Lcom/google/glass/timeline/MediaStoreFileManager;
.super Ljava/lang/Object;
.source "MediaStoreFileManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/MediaStoreFileManager$Provider;
    }
.end annotation


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "null contentResolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/google/glass/timeline/MediaStoreFileManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentResolver;
    .param p2, "x1"    # Lcom/google/glass/timeline/MediaStoreFileManager$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/MediaStoreFileManager;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public removeFileFromMediaStore(Lcom/google/googlex/glass/common/proto/nano/Attachment;)V
    .locals 10
    .param p1, "attachment"    # Lcom/google/googlex/glass/common/proto/nano/Attachment;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->hasClientCachePath()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->isPhoto(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 43
    .local v1, "contentUri":Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v0, "_data"

    aput-object v0, v2, v5

    .line 47
    .local v2, "fields":[Ljava/lang/String;
    const-string v3, "_data=?"

    .line 48
    .local v3, "select":Ljava/lang/String;
    const/4 v6, 0x0

    .line 50
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/nano/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 54
    .local v7, "id":I
    int-to-long v4, v7

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 55
    .local v8, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/glass/timeline/MediaStoreFileManager;->contentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v8, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 58
    .end local v7    # "id":I
    .end local v8    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 36
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v2    # "fields":[Ljava/lang/String;
    .end local v3    # "select":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-static {p1}, Lcom/google/glass/timeline/AttachmentUtils;->isVideo(Lcom/google/googlex/glass/common/proto/nano/Attachment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1    # "contentUri":Landroid/net/Uri;
    goto :goto_1

    .line 58
    .restart local v2    # "fields":[Ljava/lang/String;
    .restart local v3    # "select":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-eqz v6, :cond_0

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
