.class public Lcom/android/providers/contacts/DataRowHandlerForNickname;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForNickname.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .prologue
    .line 35
    const-string v4, "vnd.android.cursor.item/nickname"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .prologue
    .line 95
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendNameFromColumn(Ljava/lang/String;)V

    .line 96
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 90
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 77
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 78
    .local v1, "dataId":J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 80
    .local v3, "rawContactId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 82
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForNickname;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 83
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 84
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 85
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 42
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "nickname":Ljava/lang/String;
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v3

    .line 46
    .local v3, "dataId":J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 48
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForNickname;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForNickname(JJLjava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 51
    :cond_0
    return-wide v3
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 58
    .local v3, "dataId":J
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 60
    .local v1, "rawContactId":J
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 72
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "nickname":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForNickname;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 67
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForNickname;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForNickname(JJLjava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 69
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForNickname;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .end local v5    # "nickname":Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 72
    goto :goto_0
.end method
