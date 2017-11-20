.class public Lcom/android/providers/contacts/DataRowHandlerForIdentity;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForIdentity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .prologue
    .line 32
    const-string v0, "vnd.android.cursor.item/identity"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 68
    .local v0, "count":I
    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 69
    .local v1, "rawContactId":J
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 71
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 38
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 41
    .local v0, "dataId":J
    const-string v2, "data1"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "data2"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 45
    :cond_1
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 55
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 56
    .local v0, "rawContactId":J
    const-string v2, "data1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "data2"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForIdentity;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 60
    :cond_1
    return v3
.end method
