.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
    }
.end annotation


# instance fields
.field private final mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/aggregation/ContactAggregator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p4, "groupIdCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;>;"
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 72
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/Long;)J
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "sourceId"    # Ljava/lang/String;
    .param p5, "accountIdOrNull"    # Ljava/lang/Long;

    .prologue
    .line 192
    if-nez p5, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 194
    const-string v3, "raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "raw_contacts._id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 197
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p5

    .line 201
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 205
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_1
    if-nez p5, :cond_2

    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raw contact not found for _ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .restart local v12    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 208
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 210
    .local v10, "accountId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 211
    .local v14, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    if-nez v14, :cond_3

    .line 212
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    const/4 v2, 0x1

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .restart local v14    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 217
    .local v13, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v0, v13, :cond_5

    .line 218
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 219
    .local v15, "entry":Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    iget-wide v2, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountId:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    .line 220
    iget-wide v2, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    .line 253
    :goto_1
    return-wide v2

    .line 217
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 224
    .end local v15    # "entry":Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    :cond_5
    new-instance v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct {v15}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 225
    .restart local v15    # "entry":Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    iput-wide v10, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountId:J

    .line 226
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 227
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    const-string v3, "groups"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Projections;->ID:[Ljava/lang/String;

    const-string v5, "sourceid=? AND account_id=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v6, v2

    const/4 v2, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 236
    .restart local v12    # "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 253
    iget-wide v2, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    goto :goto_1

    .line 239
    :cond_6
    :try_start_2
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v18, "groupValues":Landroid/content/ContentValues;
    const-string v2, "account_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v2, "sourceid"

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "groups"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 243
    .local v16, "groupId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_7

    .line 244
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create a new group with this sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    .end local v16    # "groupId":J
    .end local v18    # "groupValues":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 247
    .restart local v16    # "groupId":J
    .restart local v18    # "groupValues":Landroid/content/ContentValues;
    :cond_7
    :try_start_3
    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method private hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 117
    .local v0, "groupMembershipMimetypeId":J
    const-wide/16 v4, 0x0

    const-string v6, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 120
    .local v2, "isStarred":Z
    :goto_0
    return v2

    .end local v2    # "isStarred":Z
    :cond_0
    move v2, v3

    .line 117
    goto :goto_0
.end method

.method private resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 10
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "rawContactId"    # J
    .param p4, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p5, "values"    # Landroid/content/ContentValues;
    .param p6, "isInsert"    # Z

    .prologue
    .line 149
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 150
    .local v7, "containsGroupSourceId":Z
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 151
    .local v6, "containsGroupId":Z
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    .line 158
    if-eqz p6, :cond_2

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    if-eqz v7, :cond_2

    .line 168
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "sourceId":Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->getAccountIdOrNullForRawContact(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/Long;)J

    move-result-wide v8

    .line 171
    .local v8, "groupId":J
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 172
    const-string v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    .end local v4    # "sourceId":Ljava/lang/String;
    .end local v8    # "groupId":J
    :cond_2
    return-void
.end method

.method private updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "starred"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, "rawContactValues":Landroid/content/ContentValues;
    const-string v4, "starred"

    if-eqz p4, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "raw_contacts"

    const-string v4, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateStarred(J)V

    .line 111
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 106
    goto :goto_0
.end method

.method private updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4
    .param p1, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p2, "rawContactId"    # J

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 138
    .local v0, "contactId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateAggregationAfterVisibilityChange(J)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 125
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 126
    .local v2, "rawContactId":J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 127
    .local v4, "wasStarred":Z
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 128
    .local v0, "count":I
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 129
    .local v1, "isStarred":Z
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 130
    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 132
    :cond_0
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 133
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    .line 78
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 79
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v7

    .line 80
    .local v7, "dataId":J
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 83
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 84
    return-wide v7
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-interface {p4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 91
    .local v2, "rawContactId":J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    .local v8, "wasStarred":Z
    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 92
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 93
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return v6

    .line 96
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v7

    .line 97
    .local v7, "isStarred":Z
    if-eq v8, v7, :cond_1

    .line 98
    invoke-direct {p0, p1, v2, v3, v7}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 100
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    move v6, v9

    .line 101
    goto :goto_0
.end method
