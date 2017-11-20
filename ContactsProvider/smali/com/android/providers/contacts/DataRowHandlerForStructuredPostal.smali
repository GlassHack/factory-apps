.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredPostal.java"


# instance fields
.field private final STRUCTURED_FIELDS:[Ljava/lang/String;

.field private final mSplitter:Lcom/android/providers/contacts/PostalSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/PostalSplitter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;
    .param p4, "splitter"    # Lcom/android/providers/contacts/PostalSplitter;

    .prologue
    .line 50
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data10"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    .line 52
    return-void
.end method

.method private fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "augmented"    # Landroid/content/ContentValues;
    .param p2, "update"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 82
    const-string v7, "data1"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "unstruct":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v5

    .line 85
    .local v3, "touchedUnstruct":Z
    :goto_0
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v7}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 87
    .local v2, "touchedStruct":Z
    :goto_1
    new-instance v1, Lcom/android/providers/contacts/PostalSplitter$Postal;

    invoke-direct {v1}, Lcom/android/providers/contacts/PostalSplitter$Postal;-><init>()V

    .line 89
    .local v1, "postal":Lcom/android/providers/contacts/PostalSplitter$Postal;
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 90
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1, v4}, Lcom/android/providers/contacts/PostalSplitter;->split(Lcom/android/providers/contacts/PostalSplitter$Postal;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p2}, Lcom/android/providers/contacts/PostalSplitter$Postal;->toValues(Landroid/content/ContentValues;)V

    .line 98
    :cond_0
    :goto_2
    return-void

    .end local v1    # "postal":Lcom/android/providers/contacts/PostalSplitter$Postal;
    .end local v2    # "touchedStruct":Z
    .end local v3    # "touchedUnstruct":Z
    :cond_1
    move v3, v6

    .line 84
    goto :goto_0

    .restart local v3    # "touchedUnstruct":Z
    :cond_2
    move v2, v6

    .line 85
    goto :goto_1

    .line 92
    .restart local v1    # "postal":Lcom/android/providers/contacts/PostalSplitter$Postal;
    .restart local v2    # "touchedStruct":Z
    :cond_3
    if-nez v3, :cond_0

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->STRUCTURED_FIELDS:[Ljava/lang/String;

    invoke-virtual {p0, p2, v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/PostalSplitter$Postal;->fromValues(Landroid/content/ContentValues;)V

    .line 95
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->mSplitter:Lcom/android/providers/contacts/PostalSplitter;

    invoke-virtual {v5, v1}, Lcom/android/providers/contacts/PostalSplitter;->join(Lcom/android/providers/contacts/PostalSplitter$Postal;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "joined":Ljava/lang/String;
    const-string v5, "data1"

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .prologue
    .line 113
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 108
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "txContext"    # Lcom/android/providers/contacts/TransactionContext;
    .param p3, "rawContactId"    # J
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 57
    invoke-direct {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 58
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

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
    const/4 v3, 0x0

    .line 64
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 65
    .local v1, "dataId":J
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 66
    .local v0, "augmented":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return v3

    .line 70
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredPostal;->fixStructuredPostalComponents(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 71
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 72
    const/4 v3, 0x1

    goto :goto_0
.end method
