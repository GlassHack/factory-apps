.class public Lcom/android/providers/downloads/DownloadStorageProvider;
.super Landroid/provider/DocumentsProvider;
.source "DownloadStorageProvider.java"


# static fields
.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDm:Landroid/app/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    aput-object v1, v0, v2

    const-string v1, "flags"

    aput-object v1, v0, v3

    const-string v1, "icon"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "document_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/downloads/DownloadStorageProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "document_id"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v3

    const-string v1, "_display_name"

    aput-object v1, v0, v4

    const-string v1, "summary"

    aput-object v1, v0, v5

    const-string v1, "last_modified"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/downloads/DownloadStorageProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    return-void
.end method

.method private static addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 379
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getNotificationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 84
    return-void
.end method

.method private includeDefaultDocument(Landroid/database/MatrixCursor;)V
    .locals 3
    .param p1, "result"    # Landroid/database/MatrixCursor;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 283
    .local v0, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v1, "document_id"

    const-string v2, "downloads"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 284
    const-string v1, "mime_type"

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 285
    const-string v1, "flags"

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 287
    return-void
.end method

.method private includeDownloadFromCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 23
    .param p1, "result"    # Landroid/database/MatrixCursor;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 290
    const-string v18, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 291
    .local v5, "id":J
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "docId":Ljava/lang/String;
    const-string v18, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "displayName":Ljava/lang/String;
    const-string v18, "description"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 297
    .local v17, "summary":Ljava/lang/String;
    const-string v18, "media_type"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "mimeType":Ljava/lang/String;
    if-nez v9, :cond_0

    .line 301
    const-string v9, "vnd.android.document/file"

    .line 303
    :cond_0
    const-string v18, "total_size"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 305
    .local v15, "size":Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_1

    .line 306
    const/4 v15, 0x0

    .line 309
    :cond_1
    const-string v18, "status"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 311
    .local v16, "status":I
    packed-switch v16, :pswitch_data_0

    .line 332
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f030021

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 336
    :goto_0
    :pswitch_1
    const/4 v4, 0x6

    .line 337
    .local v4, "flags":I
    if-eqz v9, :cond_2

    const-string v18, "image/"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 338
    or-int/lit8 v4, v4, 0x1

    .line 341
    :cond_2
    const-string v18, "last_modified_timestamp"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 344
    .local v7, "lastModified":J
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v14

    .line 345
    .local v14, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v18, "document_id"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 346
    const-string v18, "_display_name"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 347
    const-string v18, "summary"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 348
    const-string v18, "_size"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 349
    const-string v18, "mime_type"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 350
    const-string v18, "last_modified"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 351
    const-string v18, "flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 352
    return-void

    .line 315
    .end local v4    # "flags":I
    .end local v7    # "lastModified":J
    .end local v14    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f03001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 316
    goto :goto_0

    .line 318
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f03001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 319
    goto :goto_0

    .line 321
    :pswitch_4
    const-string v18, "bytes_so_far"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 323
    .local v12, "progress":J
    if-eqz v15, :cond_3

    .line 324
    const-wide/16 v18, 0x64

    mul-long v18, v18, v12

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    div-long v10, v18, v20

    .line 325
    .local v10, "percent":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f030022

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 326
    goto/16 :goto_0

    .line 327
    .end local v10    # "percent":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v18

    const v19, 0x7f030020

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 329
    goto/16 :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static onDownloadProviderDelete(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 87
    const-string v1, "com.android.providers.downloads.documents"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 89
    return-void
.end method

.method private static removeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 359
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 360
    .local v1, "lastDot":I
    if-ltz v1, :cond_0

    .line 361
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "nameMime":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 367
    .end local v0    # "extension":Ljava/lang/String;
    .end local v2    # "nameMime":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private static resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/downloads/DownloadStorageProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .end local p0    # "projection":[Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "projection":[Ljava/lang/String;
    :cond_0
    sget-object p0, Lcom/android/providers/downloads/DownloadStorageProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v1, "vnd.android.document/directory"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Directory creation not supported"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 113
    .local v15, "parent":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 118
    .local v16, "token":J
    :try_start_0
    invoke-static/range {p2 .. p3}, Lcom/android/providers/downloads/DownloadStorageProvider;->removeExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 119
    new-instance v12, Ljava/io/File;

    invoke-static/range {p2 .. p3}, Lcom/android/providers/downloads/DownloadStorageProvider;->addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v12, "file":Ljava/io/File;
    const/4 v13, 0x0

    .local v13, "n":I
    move v14, v13

    .line 123
    .end local v13    # "n":I
    .local v14, "n":I
    :goto_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "n":I
    .restart local v13    # "n":I
    const/16 v1, 0x20

    if-ge v14, v1, :cond_2

    .line 124
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadStorageProvider;->addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v15, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v12    # "file":Ljava/io/File;
    move v14, v13

    .end local v13    # "n":I
    .restart local v14    # "n":I
    goto :goto_0

    :cond_1
    move v13, v14

    .line 128
    .end local v14    # "n":I
    .restart local v13    # "n":I
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to touch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :catch_0
    move-exception v11

    .line 132
    .local v11, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to touch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "n":I
    :catchall_0
    move-exception v1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 135
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "n":I
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v10}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 139
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return-object v1
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 8
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 148
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    move-result v2

    if-eq v2, v7, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    return-void
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    .line 70
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 71
    return v2
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 265
    .local v3, "token":J
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 266
    .local v0, "id":J
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 267
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    invoke-virtual {v5, v0, v1}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 269
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    return-object v5

    .line 269
    .end local v0    # "id":J
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 277
    const-string v0, "r"

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/providers/downloads/DownloadStorageProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 278
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v0
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/downloads/DownloadStorageProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 186
    .local v1, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 187
    .local v2, "token":J
    const/4 v0, 0x0

    .line 189
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 191
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 192
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->includeDownloadFromCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    throw v4

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 197
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    return-object v1
.end method

.method public queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/downloads/DownloadStorageProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 209
    .local v1, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 210
    .local v2, "token":J
    const/4 v0, 0x0

    .line 212
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 215
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->includeDownloadFromCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw v4

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 220
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 222
    return-object v1
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/downloads/DownloadStorageProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 160
    .local v1, "result":Landroid/database/MatrixCursor;
    const-string v4, "downloads"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadStorageProvider;->includeDefaultDocument(Landroid/database/MatrixCursor;)V

    .line 177
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 165
    .local v2, "token":J
    const/4 v0, 0x0

    .line 167
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [J

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    invoke-direct {p0, v1, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->includeDownloadFromCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    throw v4
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {p2}, Lcom/android/providers/downloads/DownloadStorageProvider;->resolveDocumentProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 231
    .local v2, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 232
    .local v3, "token":J
    const/4 v0, 0x0

    .line 234
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadStorageProvider;->mDm:Landroid/app/DownloadManager;

    new-instance v7, Landroid/app/DownloadManager$Query;

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    invoke-direct {p0, v2, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->copyNotificationUri(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    .line 237
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_2

    .line 238
    const-string v6, "media_type"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "mimeType":Ljava/lang/String;
    const-string v6, "mediaprovider_uri"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, "image/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 250
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/android/providers/downloads/DownloadStorageProvider;->includeDownloadFromCursor(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 254
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    throw v6

    :cond_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 254
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return-object v2
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lcom/android/providers/downloads/DownloadStorageProvider;->resolveRootProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    .local v0, "result":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 95
    .local v1, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v2, "root_id"

    const-string v3, "downloads"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 96
    const-string v2, "flags"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 98
    const-string v2, "icon"

    const/high16 v3, 0x7f020000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 99
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f03001e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 100
    const-string v2, "document_id"

    const-string v3, "downloads"

    invoke-virtual {v1, v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 101
    return-object v0
.end method
