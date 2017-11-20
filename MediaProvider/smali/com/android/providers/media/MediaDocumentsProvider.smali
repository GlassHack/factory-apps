.class public Lcom/android/providers/media/MediaDocumentsProvider;
.super Landroid/provider/DocumentsProvider;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaDocumentsProvider$1;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;,
        Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPES:Ljava/lang/String;

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_MIME_TYPES:Ljava/lang/String;

.field private static final VIDEO_MIME_TYPES:Ljava/lang/String;

.field private static sReturnedAudioEmpty:Z

.field private static sReturnedImagesEmpty:Z

.field private static sReturnedVideosEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    aput-object v1, v0, v3

    const-string v1, "flags"

    aput-object v1, v0, v4

    const-string v1, "icon"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "document_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_types"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "document_id"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "last_modified"

    aput-object v1, v0, v6

    const-string v1, "flags"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/*"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    .line 81
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "audio/*"

    aput-object v1, v0, v3

    const-string v1, "application/ogg"

    aput-object v1, v0, v4

    const-string v1, "application/x-flac"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->joinNewline([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    .line 97
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 98
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 99
    sput-boolean v3, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    .line 898
    return-void
.end method

.method private copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 107
    return-void
.end method

.method private static getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    .locals 4
    .param p0, "docId"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/providers/media/MediaDocumentsProvider$Ident;-><init>(Lcom/android/providers/media/MediaDocumentsProvider$1;)V

    .line 166
    .local v0, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 167
    .local v1, "split":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 168
    iput-object p0, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    .line 169
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    .line 172
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    goto :goto_0
.end method

.method private getImageForBucketCleared(J)J
    .locals 7
    .param p1, "bucketId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 753
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 756
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 760
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v1

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 762
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 760
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private getVideoForBucketCleared(J)J
    .locals 7
    .param p1, "bucketId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 839
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 841
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 844
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 848
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v1

    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 850
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "No video found for bucket"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 848
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 701
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 702
    .local v1, "id":J
    const-string v4, "album"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 705
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 706
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 707
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 708
    return-void
.end method

.method private includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 682
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 683
    .local v1, "id":J
    const-string v4, "artist"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 686
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 687
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 688
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 689
    return-void
.end method

.method private includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 726
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 727
    .local v1, "id":J
    const-string v4, "audio"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 730
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 731
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 732
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 733
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 734
    const-string v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 736
    return-void
.end method

.method private includeAudioRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 517
    const/4 v0, 0x2

    .line 518
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 520
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    .line 523
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 524
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 525
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 526
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 527
    const-string v2, "document_id"

    const-string v3, "audio_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 528
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->AUDIO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 529
    return-void
.end method

.method private includeAudioRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 550
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 551
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "audio_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 552
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 553
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 554
    return-void
.end method

.method private includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x1

    .line 601
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 602
    .local v1, "id":J
    const-string v4, "image"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 605
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 606
    const-string v4, "_display_name"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 607
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 608
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 609
    const-string v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 611
    const-string v4, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 612
    return-void
.end method

.method private includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 570
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 571
    .local v1, "id":J
    const-string v4, "images_bucket"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 574
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 575
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 577
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 578
    const-string v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 580
    const-string v4, "flags"

    const v5, 0x10031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 583
    return-void
.end method

.method private includeImagesRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 487
    const/4 v0, 0x6

    .line 488
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 490
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 494
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 495
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 496
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 497
    const-string v2, "document_id"

    const-string v3, "images_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 498
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->IMAGE_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 499
    return-void
.end method

.method private includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 533
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "images_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 534
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 535
    const-string v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 537
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 538
    return-void
.end method

.method private includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x1

    .line 659
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 660
    .local v1, "id":J
    const-string v4, "video"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 663
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 664
    const-string v4, "_display_name"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 665
    const-string v4, "_size"

    const/4 v5, 0x3

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 666
    const-string v4, "mime_type"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 667
    const-string v4, "last_modified"

    const/4 v5, 0x4

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 669
    const-string v4, "flags"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 670
    return-void
.end method

.method private includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 628
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 629
    .local v1, "id":J
    const-string v4, "videos_bucket"

    invoke-static {v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 632
    .local v3, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v4, "document_id"

    invoke-virtual {v3, v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 633
    const-string v4, "_display_name"

    const/4 v5, 0x1

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 635
    const-string v4, "mime_type"

    const-string v5, "vnd.android.document/directory"

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 636
    const-string v4, "last_modified"

    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 638
    const-string v4, "flags"

    const v5, 0x10031

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 641
    return-void
.end method

.method private includeVideosRoot(Landroid/database/MatrixCursor;)V
    .locals 5
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 502
    const/4 v0, 0x6

    .line 503
    .local v0, "flags":I
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    .line 505
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 508
    :cond_0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 509
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 510
    const-string v2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 511
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 512
    const-string v2, "document_id"

    const-string v3, "videos_root"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 513
    const-string v2, "mime_types"

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider;->VIDEO_MIME_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 514
    return-void
.end method

.method private includeVideosRootDocument(Landroid/database/MatrixCursor;)V
    .locals 4
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 542
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "videos_root"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 543
    const-string v1, "_display_name"

    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 544
    const-string v1, "flags"

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 546
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 547
    return-void
.end method

.method private isEmpty(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 473
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 474
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 475
    .local v7, "token":J
    const/4 v6, 0x0

    .line 477
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 479
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v10

    .line 481
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 482
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_1
    move v1, v9

    .line 479
    goto :goto_0

    .line 481
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 482
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private static varargs joinNewline([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, "\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static notifyRootsChanged(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.providers.media.documents"

    invoke-static {v1}, Landroid/provider/DocumentsContract;->buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 117
    return-void
.end method

.method static onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v3, -0x1

    .line 142
    const-string v1, "external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 145
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "image"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 148
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 149
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "video"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 152
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 153
    const-string v1, "com.android.providers.media.documents"

    const-string v2, "audio"

    invoke-static {v2, p3, p4}, Lcom/android/providers/media/MediaDocumentsProvider;->getDocIdForIdent(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method static onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "volumeName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 124
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    if-eqz v0, :cond_2

    .line 127
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedImagesEmpty:Z

    .line 128
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    if-eqz v0, :cond_3

    .line 130
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedVideosEmpty:Z

    .line 131
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 132
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-boolean v0, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    if-eqz v0, :cond_0

    .line 133
    sput-boolean v1, Lcom/android/providers/media/MediaDocumentsProvider;->sReturnedAudioEmpty:Z

    .line 134
    invoke-static {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->notifyRootsChanged(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 774
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 778
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 781
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 783
    .local v8, "data":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 787
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 789
    .end local v8    # "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 787
    :cond_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v9

    .line 789
    goto :goto_0

    .line 787
    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 11
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 794
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 796
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 797
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_0

    .line 800
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 801
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 802
    invoke-static {v10, p1, p2, v2, v8}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 804
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 807
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-nez v1, :cond_1

    .line 809
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 810
    .local v7, "fullUri":Landroid/net/Uri;
    const-string v0, "r"

    invoke-virtual {v10, v7, v0, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 813
    .end local v7    # "fullUri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->queryOrientationForImage(JLandroid/os/CancellationSignal;)I

    move-result v9

    .line 815
    .local v9, "orientation":I
    if-eqz v9, :cond_2

    .line 816
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 817
    .local v6, "extras":Landroid/os/Bundle;
    const-string v0, "android.content.extra.ORIENTATION"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    :goto_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v0

    .line 819
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "extras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method private openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 882
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 884
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 885
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 888
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 889
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 890
    invoke-static {v2, p1, p2, v4, v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 892
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 895
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    return-object v0
.end method

.method private openVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 10
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 862
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 863
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 865
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoThumbnailQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 868
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 870
    .local v8, "data":Ljava/lang/String;
    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 877
    .end local v8    # "data":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 875
    :cond_0
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v9

    .line 877
    goto :goto_0

    .line 875
    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private queryOrientationForImage(JLandroid/os/CancellationSignal;)I
    .locals 9
    .param p1, "id"    # J
    .param p3, "signal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v8, 0x0

    .line 906
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 908
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 910
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageOrientationQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 913
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 920
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return v1

    .line 916
    :cond_0
    :try_start_1
    const-string v1, "MediaDocumentsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing orientation data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v1, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/media/MediaDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 417
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v0

    .line 419
    .local v0, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    const-string v4, "r"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Media is read-only"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_0
    const-string v4, "image"

    iget-object v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 425
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 438
    .local v1, "target":Landroid/net/Uri;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 440
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 442
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 427
    .end local v1    # "target":Landroid/net/Uri;
    .end local v2    # "token":J
    :cond_1
    const-string v4, "video"

    iget-object v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 428
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "target":Landroid/net/Uri;
    goto :goto_0

    .line 430
    .end local v1    # "target":Landroid/net/Uri;
    :cond_2
    const-string v4, "audio"

    iget-object v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 431
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "target":Landroid/net/Uri;
    goto :goto_0

    .line 434
    .end local v1    # "target":Landroid/net/Uri;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported document "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    .restart local v1    # "target":Landroid/net/Uri;
    .restart local v2    # "token":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 450
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v2

    .line 452
    .local v2, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 454
    .local v4, "token":J
    :try_start_0
    const-string v6, "images_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 455
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getImageForBucketCleared(J)J

    move-result-wide v0

    .line 456
    .local v0, "id":J
    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 468
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "id":J
    :goto_0
    return-object v6

    .line 457
    :cond_0
    :try_start_1
    const-string v6, "image"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 458
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateImageThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 468
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 459
    :cond_1
    :try_start_2
    const-string v6, "videos_bucket"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->getVideoForBucketCleared(J)J

    move-result-wide v0

    .line 461
    .restart local v0    # "id":J
    invoke-direct {p0, v0, v1, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 468
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 462
    .end local v0    # "id":J
    :cond_2
    :try_start_3
    const-string v6, "video"

    iget-object v7, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 463
    iget-wide v6, v2, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-direct {p0, v6, v7, p3}, Lcom/android/providers/media/MediaDocumentsProvider;->openOrCreateVideoThumbnailCleared(JLandroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 468
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 465
    :cond_3
    :try_start_4
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported document "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 16
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v13, Landroid/database/MatrixCursor;

    invoke-static/range {p2 .. p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 294
    .local v13, "result":Landroid/database/MatrixCursor;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v10

    .line 296
    .local v10, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 297
    .local v14, "token":J
    const/4 v7, 0x0

    .line 299
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "images_root"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 301
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "bucket_id, date_modified DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 304
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 305
    const-wide/high16 v11, -0x8000000000000000L

    .line 306
    .local v11, "lastId":J
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 307
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 308
    .local v8, "id":J
    cmp-long v2, v11, v8

    if-eqz v2, :cond_0

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 310
    move-wide v11, v8

    goto :goto_0

    .line 313
    .end local v8    # "id":J
    .end local v11    # "lastId":J
    :cond_1
    const-string v2, "images_bucket"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 318
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 319
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 320
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 373
    :catchall_0
    move-exception v2

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 322
    :cond_2
    :try_start_1
    const-string v2, "videos_root"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "bucket_id, date_modified DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 326
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 327
    const-wide/high16 v11, -0x8000000000000000L

    .line 328
    .restart local v11    # "lastId":J
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 329
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 330
    .restart local v8    # "id":J
    cmp-long v2, v11, v8

    if-eqz v2, :cond_3

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 332
    move-wide v11, v8

    goto :goto_2

    .line 335
    .end local v8    # "id":J
    .end local v11    # "lastId":J
    :cond_4
    const-string v2, "videos_bucket"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 341
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_3

    .line 344
    :cond_5
    const-string v2, "audio_root"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    sget-object v2, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 348
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 349
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_4

    .line 352
    :cond_6
    const-string v2, "artist"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 354
    const-string v2, "external"

    iget-wide v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 357
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_5

    .line 360
    :cond_7
    const-string v2, "album"

    iget-object v3, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 362
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v10, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 365
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 366
    :goto_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 367
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_6

    .line 370
    :cond_8
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :cond_9
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 374
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    return-object v13
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 201
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 202
    .local v8, "result":Landroid/database/MatrixCursor;
    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->getIdentForDocId(Ljava/lang/String;)Lcom/android/providers/media/MediaDocumentsProvider$Ident;

    move-result-object v7

    .line 204
    .local v7, "ident":Lcom/android/providers/media/MediaDocumentsProvider$Ident;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 205
    .local v9, "token":J
    const/4 v6, 0x0

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "images_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRootDocument(Landroid/database/MatrixCursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_0
    :goto_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 284
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return-object v8

    .line 210
    :cond_1
    :try_start_1
    const-string v1, "images_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_id, date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 284
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 219
    :cond_2
    :try_start_2
    const-string v1, "image"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 225
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0

    .line 228
    :cond_3
    const-string v1, "videos_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    const-string v1, "videos_bucket"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideosBucketQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "bucket_id, date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosBucket(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 240
    :cond_5
    const-string v1, "video"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 249
    :cond_6
    const-string v1, "audio_root"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    invoke-direct {p0, v8}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRootDocument(Landroid/database/MatrixCursor;)V

    goto/16 :goto_0

    .line 252
    :cond_7
    const-string v1, "artist"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 254
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ArtistQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 258
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeArtist(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 261
    :cond_8
    const-string v1, "album"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 263
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAlbum(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 270
    :cond_9
    const-string v1, "audio"

    iget-object v2, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 272
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/providers/media/MediaDocumentsProvider$Ident;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 276
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0, v8, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudio(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 280
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported document "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x40

    .line 382
    invoke-virtual {p0}, Lcom/android/providers/media/MediaDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 385
    .local v7, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 386
    .local v8, "token":J
    const/4 v6, 0x0

    .line 388
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "images_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$ImageQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 392
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 393
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    .line 394
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImage(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v1

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 409
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 396
    :cond_0
    :try_start_1
    const-string v1, "videos_root"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/media/MediaDocumentsProvider$VideoQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date_modified DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 401
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_2

    .line 402
    invoke-direct {p0, v7, v6}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideo(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_1

    .line 405
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 409
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    return-object v7
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lcom/android/providers/media/MediaDocumentsProvider;->resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    .local v0, "result":Landroid/database/MatrixCursor;
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeImagesRoot(Landroid/database/MatrixCursor;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeVideosRoot(Landroid/database/MatrixCursor;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaDocumentsProvider;->includeAudioRoot(Landroid/database/MatrixCursor;)V

    .line 195
    return-object v0
.end method
