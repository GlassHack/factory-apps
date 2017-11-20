.class public Lcom/android/providers/contacts/aggregation/ProfileAggregator;
.super Lcom/android/providers/contacts/aggregation/ContactAggregator;
.source "ProfileAggregator.java"


# instance fields
.field private mContactId:J


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V
    .locals 0
    .param p1, "contactsProvider"    # Lcom/android/providers/contacts/ContactsProvider2;
    .param p2, "contactsDatabaseHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "photoPriorityResolver"    # Lcom/android/providers/contacts/PhotoPriorityResolver;
    .param p4, "nameSplitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p5, "commonNicknameCache"    # Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/aggregation/ContactAggregator;-><init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;)V

    .line 45
    return-void
.end method


# virtual methods
.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J

    .prologue
    .line 79
    const-string v2, "SELECT _id FROM contacts ORDER BY _id LIMIT 1"

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 85
    .local v1, "profileContactIdLookup":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->mContactId:J

    .line 86
    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->mContactId:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 93
    :goto_0
    iget-wide v2, p0, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->mContactId:J

    invoke-virtual {p0, p3, p4, v2, v3}, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->setContactId(JJ)V

    .line 94
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/database/sqlite/SQLiteDoneException;
    :try_start_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->mContactId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .end local v0    # "e":Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    return-void
.end method

.method protected appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "accountTypeWithDataSet"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "rawContactId"    # J
    .param p6, "sourceId"    # Ljava/lang/String;
    .param p7, "displayName"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 58
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method protected computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contactId"    # J

    .prologue
    .line 49
    const-string v0, "profile"

    return-object v0
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 2
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rawContactId"    # J

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 65
    iget-wide v0, p0, Lcom/android/providers/contacts/aggregation/ProfileAggregator;->mContactId:J

    return-wide v0
.end method
