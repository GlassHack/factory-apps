.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# static fields
.field public static final VERBOSE_LOGGING:Z


# instance fields
.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializeDbTag:Ljava/lang/String;

.field private mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mTransactionHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "ContactsProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private endTransaction(Z)V
    .locals 4
    .param p1, "callerIsBatch"    # Z

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 280
    .local v0, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isBatch()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 282
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->notifyChange()V

    .line 285
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 291
    :cond_2
    return-void

    .line 288
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v1
.end method

.method private startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .locals 4
    .param p1, "callerIsBatch"    # Z

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 258
    .local v0, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    if-nez v0, :cond_1

    .line 259
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    .end local v0    # "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 260
    .restart local v0    # "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsTransaction;->startTransactionForDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 266
    :cond_1
    return-object v0
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
    const/4 v11, 0x1

    .line 205
    sget-boolean v8, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_0

    .line 206
    const-string v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ops"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    const/4 v7, 0x0

    .line 209
    .local v7, "ypCount":I
    const/4 v2, 0x0

    .line 210
    .local v2, "opCount":I
    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v6

    .line 212
    .local v6, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 213
    .local v1, "numOperations":I
    new-array v5, v1, [Landroid/content/ContentProviderResult;

    .line 214
    .local v5, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 215
    add-int/lit8 v2, v2, 0x1

    const/16 v8, 0x1f4

    if-lt v2, v8, :cond_1

    .line 216
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v8, v9, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v0    # "i":I
    .end local v1    # "numOperations":I
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v8

    .line 221
    .restart local v0    # "i":I
    .restart local v1    # "numOperations":I
    .restart local v5    # "results":[Landroid/content/ContentProviderResult;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 222
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 223
    sget-boolean v8, Lcom/android/providers/contacts/AbstractContactsProvider;->VERBOSE_LOGGING:Z

    if-eqz v8, :cond_2

    .line 224
    const-string v8, "ContactsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyBatch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ops finished; about to yield..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :cond_2
    const/4 v2, 0x0

    .line 228
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_3

    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 237
    :cond_3
    :try_start_3
    invoke-virtual {v3, p0, v5, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v8

    aput-object v8, v5, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v4

    .line 232
    .local v4, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 233
    throw v4

    .line 239
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v4    # "re":Ljava/lang/RuntimeException;
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    invoke-direct {p0, v11}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v5
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    .line 179
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v4

    .line 180
    .local v4, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    array-length v1, p2

    .line 181
    .local v1, "numValues":I
    const/4 v2, 0x0

    .line 183
    .local v2, "opCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 184
    :try_start_0
    aget-object v5, p2, v0

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x32

    if-lt v2, v5, :cond_0

    .line 186
    const/4 v2, 0x0

    .line 188
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/AbstractContactsProvider;->yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "re":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsTransaction;->markYieldFailed()V

    .line 191
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .end local v3    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v5

    .line 195
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    .line 199
    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 151
    .local v1, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "deleted":I
    if-lez v0, :cond_0

    .line 153
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 155
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v0

    .end local v0    # "deleted":I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public getCurrentTransaction()Lcom/android/providers/contacts/ContactsTransaction;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract getTransactionHolder()Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/providers/contacts/ContactsTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v1

    .line 136
    .local v1, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "result":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 140
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return-object v0

    .end local v0    # "result":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract notifyChange()V
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 108
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getTransactionHolder()Ljava/lang/ThreadLocal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mTransactionHolder:Ljava/lang/ThreadLocal;

    .line 109
    const/4 v1, 0x1

    return v1
.end method

.method public setDbHelperToSerializeOn(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 0
    .param p1, "serializeOnDbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeOnDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 124
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializeDbTag:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->mSerializedDbTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 126
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 164
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->startTransaction(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 166
    .local v0, "transaction":Lcom/android/providers/contacts/ContactsTransaction;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 167
    .local v1, "updated":I
    if-lez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->markDirty()V

    .line 170
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->markSuccessful(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    return v1

    .end local v1    # "updated":I
    :catchall_0
    move-exception v2

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract yield(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method
