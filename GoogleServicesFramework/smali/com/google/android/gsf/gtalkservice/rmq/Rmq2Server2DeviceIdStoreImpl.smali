.class public Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;
.super Ljava/lang/Object;
.source "Rmq2Server2DeviceIdStoreImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStore;


# static fields
.field private static final S2D_IDS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmq_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->S2D_IDS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    .line 41
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Rmq2Server2DeviceIdStore] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method


# virtual methods
.method public addS2dId(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v0, "value":Landroid/content/ContentValues;
    const-string v1, "rmq_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public clearAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public deleteS2dIds(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 102
    :cond_0
    return-void

    .line 85
    :cond_1
    const/16 v6, 0x64

    .line 86
    .local v6, "max_batch_size":I
    const/4 v7, 0x0

    .line 87
    .local v7, "start_batch":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 88
    add-int v9, v7, v6

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89
    .local v2, "end_batch":I
    sub-int v9, v2, v7

    new-array v5, v9, [Ljava/lang/String;

    .line 90
    .local v5, "idsToDelete":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    move v8, v7

    .line 92
    .end local v7    # "start_batch":I
    .local v8, "start_batch":I
    :goto_1
    if-ge v8, v2, :cond_3

    .line 93
    if-lez v4, :cond_2

    .line 94
    const-string v9, " OR "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    const-string v9, "rmq_id"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "start_batch":I
    .restart local v7    # "start_batch":I
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v5, v4

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    move v8, v7

    .end local v7    # "start_batch":I
    .restart local v8    # "start_batch":I
    goto :goto_1

    .line 99
    :cond_3
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v7, v8

    .line 101
    .end local v8    # "start_batch":I
    .restart local v7    # "start_batch":I
    goto :goto_0
.end method

.method public getS2dIds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v8, "retVal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$ServerToDeviceRmqIds;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->S2D_IDS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 52
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 54
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "id":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v7    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 65
    :goto_1
    return-object v8

    .line 62
    :cond_1
    const-string v0, "getS2dIds"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Server2DeviceIdStoreImpl;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method
