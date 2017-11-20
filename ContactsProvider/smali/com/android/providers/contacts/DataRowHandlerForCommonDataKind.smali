.class public Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForCommonDataKind.java"


# instance fields
.field private final mLabelColumn:Ljava/lang/String;

.field private final mTypeColumn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p3, "aggregator"    # Lcom/android/providers/contacts/aggregation/ContactAggregator;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "typeColumn"    # Ljava/lang/String;
    .param p6, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;)V

    .line 39
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private enforceTypeAndLabel(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "augmented"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 69
    .local v1, "hasType":Z
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 71
    .local v0, "hasLabel":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 73
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mTypeColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be specified when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->mLabelColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "hasLabel":Z
    .end local v1    # "hasType":Z
    :cond_0
    move v1, v3

    .line 68
    goto :goto_0

    .restart local v1    # "hasType":Z
    :cond_1
    move v0, v3

    .line 69
    goto :goto_1

    .line 76
    .restart local v0    # "hasLabel":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 80
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
    .line 46
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 47
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

    .line 53
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 54
    .local v1, "dataId":J
    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 55
    .local v0, "augmented":Landroid/content/ContentValues;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return v3

    .line 58
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->enforceTypeAndLabel(Landroid/content/ContentValues;)V

    .line 59
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    goto :goto_0
.end method
