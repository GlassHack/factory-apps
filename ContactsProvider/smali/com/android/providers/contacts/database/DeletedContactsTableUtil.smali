.class public Lcom/android/providers/contacts/database/DeletedContactsTableUtil;
.super Ljava/lang/Object;
.source "DeletedContactsTableUtil.java"


# direct methods
.method public static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 38
    const-string v0, "CREATE TABLE deleted_contacts (contact_id INTEGER PRIMARY KEY,contact_deleted_timestamp INTEGER NOT NULL default 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "deleted_contacts"

    const-string v1, "contact_deleted_timestamp"

    invoke-static {v0, v1}, Lcom/android/providers/contacts/database/MoreDatabaseUtils;->buildCreateIndexSql(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static deleteOldLogs(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long v1, v3, v5

    .line 76
    .local v1, "time":J
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 78
    .local v0, "args":[Ljava/lang/String;
    const-string v3, "deleted_contacts"

    const-string v4, "contact_deleted_timestamp < ?"

    invoke-virtual {p0, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static insertDeletedContact(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "contactId"    # J

    .prologue
    .line 57
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v1, "contact_deleted_timestamp"

    invoke-static {}, Lcom/android/providers/contacts/util/Clock;->getInstance()Lcom/android/providers/contacts/util/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "deleted_contacts"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    return-wide v1
.end method
