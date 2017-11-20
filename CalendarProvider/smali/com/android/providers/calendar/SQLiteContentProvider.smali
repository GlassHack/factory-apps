.class public abstract Lcom/android/providers/calendar/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsCallerSyncAdapter:Ljava/lang/Boolean;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 219
    .local v4, "numOperations":I
    if-nez v4, :cond_0

    .line 220
    new-array v6, v9, [Landroid/content/ContentProviderResult;

    .line 242
    :goto_0
    return-object v6

    .line 222
    :cond_0
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 223
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 224
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentProviderOperation;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v3

    .line 225
    .local v3, "isCallerSyncAdapter":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 227
    .local v1, "identity":J
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 228
    new-array v6, v4, [Landroid/content/ContentProviderResult;

    .line 229
    .local v6, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 230
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    .line 231
    .local v5, "operation":Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_1

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v7, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 234
    :cond_1
    invoke-virtual {v5, p0, v6, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v6, v0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v5    # "operation":Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 240
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 241
    if-nez v3, :cond_3

    move v7, v8

    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 242
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    move v7, v9

    .line 241
    goto :goto_2

    .line 239
    .end local v0    # "i":I
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v7

    iget-object v10, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 240
    iget-object v10, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 241
    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {p0, v8}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 242
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_4
    move v8, v9

    .line 241
    goto :goto_3
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    .line 120
    array-length v4, p2

    .line 121
    .local v4, "numValues":I
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v3

    .line 122
    .local v3, "isCallerSyncAdapter":Z
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 123
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 126
    .local v1, "identity":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 127
    :try_start_0
    aget-object v7, p2, v0

    invoke-virtual {p0, p1, v7, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v5

    .line 128
    .local v5, "result":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 129
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 131
    :cond_0
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v5    # "result":Landroid/net/Uri;
    :cond_1
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 139
    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 140
    return v4

    .line 135
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 139
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "count":I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 180
    .local v0, "applyingBatch":Z
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v4

    .line 181
    .local v4, "isCallerSyncAdapter":Z
    if-nez v0, :cond_3

    .line 182
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 183
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 186
    .local v2, "identity":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 187
    if-lez v1, :cond_0

    .line 188
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 190
    :cond_0
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 196
    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->shouldSyncFor(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 203
    .end local v2    # "identity":J
    :cond_1
    :goto_1
    return v1

    .line 192
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 196
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 198
    .end local v2    # "identity":J
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 199
    if-lez v1, :cond_1

    .line 200
    iput-boolean v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected getIsCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 207
    const-string v1, "caller_is_syncadapter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 209
    .local v0, "isCurrentSyncAdapter":Z
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 212
    :cond_1
    return v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    .line 90
    const/4 v4, 0x0

    .line 91
    .local v4, "result":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 92
    .local v0, "applyingBatch":Z
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v3

    .line 93
    .local v3, "isCallerSyncAdapter":Z
    if-nez v0, :cond_3

    .line 94
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 98
    .local v1, "identity":J
    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v4

    .line 99
    if-eqz v4, :cond_0

    .line 100
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->shouldSyncFor(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 115
    .end local v1    # "identity":J
    :cond_1
    :goto_1
    return-object v4

    .line 104
    .restart local v1    # "identity":J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 108
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 110
    .end local v1    # "identity":J
    :cond_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v4

    .line 111
    if-eqz v4, :cond_1

    .line 112
    iput-boolean v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method protected abstract notifyChange(Z)V
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 248
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onBeginTransaction()V

    .line 249
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 253
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction(Z)V
    .locals 1
    .param p1, "syncToNetwork"    # Z

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->notifyChange(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method protected abstract shouldSyncFor(Landroid/net/Uri;)Z
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 145
    const/4 v7, 0x0

    .line 146
    .local v7, "count":I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 147
    .local v6, "applyingBatch":Z
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    .line 148
    .local v5, "isCallerSyncAdapter":Z
    if-nez v6, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, "identity":J
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 153
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 155
    if-lez v7, :cond_0

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 164
    if-nez v5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->shouldSyncFor(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction(Z)V

    .line 173
    .end local v8    # "identity":J
    :cond_1
    :goto_1
    return v7

    .line 160
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 164
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .end local v8    # "identity":J
    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 166
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 168
    if-lez v7, :cond_1

    .line 169
    iput-boolean v10, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_1
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
