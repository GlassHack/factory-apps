.class public Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForPhoneNumber.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;

    .prologue
    .line 38
    const-string v4, "vnd.android.cursor.item/phone_v2"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private fillNormalizedNumber(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 85
    const-string v3, "data1"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    const-string v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v3, "data1"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "number":Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "numberE164":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "newNumberE164":Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "dataId"    # J
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "numberE164"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 116
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    const-string v2, "phone_lookup"

    const-string v3, "data_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    if-eqz p6, :cond_0

    .line 119
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v1, "phoneValues":Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string v2, "data_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string v2, "normalized_number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "min_match"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "phone_lookup"

    invoke-virtual {p1, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 129
    if-eqz p7, :cond_0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    const-string v2, "normalized_number"

    invoke-virtual {v1, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "min_match"

    invoke-static {p7}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "phone_lookup"

    invoke-virtual {p1, v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 137
    .end local v0    # "normalizedNumber":Ljava/lang/String;
    .end local v1    # "phoneValues":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .prologue
    .line 161
    const-string v3, "data1"

    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendToken(Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "numberE164":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 156
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    .line 102
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 103
    .local v4, "dataId":J
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 105
    .local v2, "rawContactId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v8

    .local v8, "count":I
    move-object v0, p0

    move-object v1, p1

    move-object v7, v6

    .line 107
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 109
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 110
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 111
    return v8
.end method

.method protected getTypeRank(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 150
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 142
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 145
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 147
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 148
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 149
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 44
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fillNormalizedNumber(Landroid/content/ContentValues;)V

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v4

    .line 47
    .local v4, "dataId":J
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "number":Ljava/lang/String;
    const-string v0, "data4"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "normalizedNumber":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 54
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 56
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "normalizedNumber":Ljava/lang/String;
    :cond_0
    return-wide v4
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fillNormalizedNumber(Landroid/content/ContentValues;)V

    .line 64
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return v0

    .line 68
    :cond_0
    const-string v1, "data1"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 70
    .local v4, "dataId":J
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 71
    .local v2, "rawContactId":J
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "data4"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->updatePhoneLookup(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->mContactAggregator:Lcom/android/providers/contacts/aggregation/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/aggregation/ContactAggregator;->updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 75
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 77
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .end local v2    # "rawContactId":J
    .end local v4    # "dataId":J
    :cond_1
    move v0, v8

    .line 80
    goto :goto_0
.end method
