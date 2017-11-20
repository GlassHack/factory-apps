.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# instance fields
.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;
    .param p4, "photoStore"    # Lcom/android/providers/contacts/PhotoStore;
    .param p5, "maxDisplayPhotoDim"    # I
    .param p6, "maxThumbnailPhotoDim"    # I

    .prologue
    .line 51
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 53
    iput p5, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxDisplayPhotoDim:I

    .line 54
    iput p6, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxThumbnailPhotoDim:I

    .line 55
    return-void
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 126
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 127
    .local v0, "photoBytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 108
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 110
    .local v0, "photoExists":Z
    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    const/4 v1, 0x0

    .line 122
    .end local v0    # "photoExists":Z
    :goto_0
    return v1

    .line 118
    .restart local v0    # "photoExists":Z
    :cond_0
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 119
    const-string v1, "data14"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 122
    .end local v0    # "photoExists":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 146
    const-string v5, "data15"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 147
    .local v1, "originalPhoto":[B
    if-eqz v1, :cond_1

    .line 149
    :try_start_0
    new-instance v4, Lcom/android/providers/contacts/PhotoProcessor;

    iget v5, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxDisplayPhotoDim:I

    iget v6, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mMaxThumbnailPhotoDim:I

    invoke-direct {v4, v1, v5, v6}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 151
    .local v4, "processor":Lcom/android/providers/contacts/PhotoProcessor;
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v5, v4}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v2

    .line 152
    .local v2, "photoFileId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "data14"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :goto_0
    const-string v5, "data15"

    invoke-virtual {v4}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 158
    const/4 v5, 0x1

    .line 163
    .end local v2    # "photoFileId":J
    .end local v4    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :goto_1
    return v5

    .line 155
    .restart local v2    # "photoFileId":J
    .restart local v4    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :cond_0
    const-string v5, "data14"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v2    # "photoFileId":J
    .end local v4    # "processor":Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ioe":Ljava/io/IOException;
    const-string v5, "DataRowHandlerForPhoto"

    const-string v6, "Could not process photo for insert or update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 132
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 133
    .local v1, "rawContactId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 134
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 135
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 71
    .local v0, "dataId":J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 74
    .end local v0    # "dataId":J
    :cond_1
    :goto_0
    return-wide v0

    .line 65
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 82
    .local v0, "rawContactId":J
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    :goto_0
    return v2

    .line 86
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 97
    goto :goto_0
.end method
