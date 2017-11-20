.class public Lcom/google/glass/entity/EntityMetadataDatabaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final METADATA_KEY_WHERE:Ljava/lang/String; = "metadata_key=?"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private storeMetadataContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 81
    const-string v2, "metadata_key"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    if-nez v2, :cond_0

    .line 83
    sget-object v0, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Dropping request to store sync metadata, as METADATA_KEY column must be specified in ContentValues."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return v1

    .line 88
    :cond_0
    sget-object v3, Lcom/google/glass/entity/EntityProviderConstants;->SYNC_METADATA_URI:Landroid/net/Uri;

    const-string v4, "metadata_key=?"

    new-array v5, v0, [Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-virtual {p1, v3, p2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 90
    if-ne v3, v0, :cond_1

    .line 91
    sget-object v4, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Updated sync metadata [key=%s]."

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_1
    if-lez v3, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    .line 93
    :cond_1
    sget-object v4, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error updating sync metadata, expected 1 row updated [key=%s, numRows=%d]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    .line 93
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 96
    goto :goto_2
.end method


# virtual methods
.method public deleteKey(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 49
    sget-object v2, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Deleting entity metadata [key=%s]."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v2, Lcom/google/glass/entity/EntityProviderConstants;->SYNC_METADATA_URI:Landroid/net/Uri;

    const-string v3, "metadata_key=?"

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getValueAsString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 60
    :try_start_0
    sget-object v1, Lcom/google/glass/entity/EntityProviderConstants;->SYNC_METADATA_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "metadata_key"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "metadata_value"

    aput-object v3, v2, v0

    const-string v3, "metadata_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 64
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 65
    const-string v0, "metadata_value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_1
    return-object v0

    .line 73
    :cond_2
    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 73
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2

    :cond_4
    move-object v0, v6

    goto :goto_0
.end method

.method public storeKeyValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 31
    if-nez p3, :cond_0

    .line 32
    sget-object v0, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Value is null, deleting key instead."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->deleteKey(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    sget-object v0, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Storing entity metadata [key=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    const-string v1, "metadata_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "metadata_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/glass/entity/EntityMetadataDatabaseHelper;->storeMetadataContentValues(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_0
.end method
