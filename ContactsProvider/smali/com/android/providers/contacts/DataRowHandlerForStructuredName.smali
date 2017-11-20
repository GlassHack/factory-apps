.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredName.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field private final mSb:Ljava/lang/StringBuilder;

.field private final mSplitter:Lcom/android/providers/contacts/NameSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;
    .param p4, "splitter"    # Lcom/android/providers/contacts/NameSplitter;
    .param p5, "nameLookupBuilder"    # Lcom/android/providers/contacts/NameLookupBuilder;

    .prologue
    .line 41
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 43
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 44
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 11
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .prologue
    const/4 v8, 0x0

    .line 200
    const-string v7, "data1"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "name":Ljava/lang/String;
    const-string v7, "data10"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    .local v0, "fullNameStyle":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    :goto_0
    invoke-virtual {v9, p1, v1, v7}, Lcom/android/providers/contacts/NameLookupBuilder;->appendToSearchIndex(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 207
    const-string v7, "data9"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "phoneticFamily":Ljava/lang/String;
    const-string v7, "data8"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "phoneticMiddle":Ljava/lang/String;
    const-string v7, "data7"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "phoneticGiven":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 214
    :cond_0
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 216
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 217
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 220
    invoke-virtual {p1, v4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 224
    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 225
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_3
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "phoneticName":Ljava/lang/String;
    const-string v7, "data11"

    invoke-virtual {p1, v7}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 229
    .local v6, "phoneticNameStyle":I
    if-nez v6, :cond_4

    .line 230
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v7, v5}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v6

    .line 232
    :cond_4
    invoke-virtual {p1, v5}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendName(Ljava/lang/String;)V

    .line 233
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    invoke-virtual {v7, p1, v5, v6}, Lcom/android/providers/contacts/NameLookupBuilder;->appendNameShorthandLookup(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 236
    .end local v5    # "phoneticName":Ljava/lang/String;
    .end local v6    # "phoneticNameStyle":I
    :cond_5
    return-void

    .end local v2    # "phoneticFamily":Ljava/lang/String;
    .end local v3    # "phoneticGiven":Ljava/lang/String;
    .end local v4    # "phoneticMiddle":Ljava/lang/String;
    :cond_6
    move v7, v8

    .line 203
    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 188
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 100
    const/4 v5, 0x0

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 101
    .local v1, "dataId":J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 103
    .local v3, "rawContactId":J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 105
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 106
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 107
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 108
    return v0
.end method

.method public fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "augmented"    # Landroid/content/ContentValues;
    .param p2, "update"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 126
    const-string v8, "data1"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "unstruct":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    move v3, v6

    .line 129
    .local v3, "touchedUnstruct":Z
    :goto_0
    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v8}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    move v2, v6

    .line 131
    .local v2, "touchedStruct":Z
    :goto_1
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 132
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 133
    .local v1, "name":Lcom/android/providers/contacts/NameSplitter$Name;
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1, v5}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->toValues(Landroid/content/ContentValues;)V

    .line 167
    .end local v1    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    :goto_2
    return-void

    .end local v2    # "touchedStruct":Z
    .end local v3    # "touchedUnstruct":Z
    :cond_1
    move v3, v7

    .line 128
    goto :goto_0

    .restart local v3    # "touchedUnstruct":Z
    :cond_2
    move v2, v7

    .line 129
    goto :goto_1

    .line 135
    .restart local v2    # "touchedStruct":Z
    :cond_3
    if-nez v3, :cond_5

    if-nez v2, :cond_4

    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v8}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 141
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 142
    .restart local v1    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 144
    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 145
    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 146
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v7, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 147
    iget v4, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 148
    .local v4, "unadjustedFullNameStyle":I
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    iget v8, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v7, v8}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 149
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v7, v1, v6, v6}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "joined":Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {p2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v6, "data10"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v6, "data11"

    iget v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 154
    .end local v0    # "joined":Ljava/lang/String;
    .end local v1    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v4    # "unadjustedFullNameStyle":I
    :cond_5
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 155
    const-string v6, "data10"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 156
    const-string v6, "data10"

    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v8, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    :cond_6
    const-string v6, "data11"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 161
    .restart local v1    # "name":Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->fromValues(Landroid/content/ContentValues;)V

    .line 162
    iput v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 163
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v6, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 164
    const-string v6, "data11"

    iget v7, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 49
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 51
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v7

    .line 53
    .local v7, "dataId":J
    const-string v4, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "name":Ljava/lang/String;
    const-string v4, "data10"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 55
    .local v16, "fullNameStyle":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v10

    :goto_0
    move-wide/from16 v5, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    move-object/from16 v10, p0

    move-wide/from16 v11, p3

    move-wide v13, v7

    move-object/from16 v15, p5

    .line 59
    invoke-virtual/range {v10 .. v15}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 60
    invoke-virtual/range {p0 .. p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 62
    return-wide v7

    .line 55
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V
    .locals 8
    .param p1, "rawContactId"    # J
    .param p3, "dataId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 171
    const-string v0, "data9"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "data9"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "data8"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "data7"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "callerIsSyncAdapter"    # Z

    .prologue
    .line 68
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 69
    .local v4, "dataId":J
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 71
    .local v2, "rawContactId":J
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v12

    .line 72
    .local v12, "augmented":Landroid/content/ContentValues;
    if-nez v12, :cond_0

    .line 73
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    .line 76
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixStructuredNameComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 78
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 79
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data9"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "data7"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 84
    const-string v1, "data1"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->deleteNameLookup(J)V

    .line 86
    const-string v1, "data10"

    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 87
    .local v13, "fullNameStyle":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v13, :cond_3

    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->mSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v7

    :goto_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    move-object v7, p0

    move-wide v8, v2

    move-wide v10, v4

    .line 91
    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->insertNameLookupForPhoneticName(JJLandroid/content/ContentValues;)V

    .line 93
    .end local v6    # "name":Ljava/lang/String;
    .end local v13    # "fullNameStyle":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 94
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 95
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v13    # "fullNameStyle":Ljava/lang/Integer;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method
