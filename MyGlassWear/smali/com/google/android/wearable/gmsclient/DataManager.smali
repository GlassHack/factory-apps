.class public Lcom/google/android/wearable/gmsclient/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;,
        Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;,
        Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;,
        Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final WEAR_URI_SCHEME:Ljava/lang/String; = "wear"


# instance fields
.field private final mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V
    .locals 0
    .param p1, "clientHelper"    # Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/gmsclient/DataManager;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    return-object v0
.end method

.method public static makeWearUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/android/wearable/gmsclient/DataManager;->validateStringPath(Ljava/lang/String;)V

    .line 175
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "wear"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static validateStringPath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An empty path was supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A path must start with a single / ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A path must start with a single / ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    return-void
.end method


# virtual methods
.method public deleteDataItem(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 314
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/wearable/gmsclient/DataManager;->makeWearUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/wearable/DataApi;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    .line 316
    .local v0, "result":Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
    const-string v1, "deleteDataItem"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 320
    return-void

    .line 318
    .end local v0    # "result":Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public deleteDataItemAsync(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;

    .prologue
    .line 333
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/wearable/gmsclient/DataManager;->makeWearUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/wearable/DataApi;->deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 335
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/DataManager$6;

    invoke-direct {v1, p0, p2}, Lcom/google/android/wearable/gmsclient/DataManager$6;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 350
    return-void
.end method

.method public getDataItem(Ljava/lang/String;)Lcom/google/android/gms/wearable/DataItem;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 150
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/wearable/gmsclient/DataManager;->makeWearUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataItemBuffer;

    .line 153
    .local v1, "result":Lcom/google/android/gms/wearable/DataItemBuffer;
    :try_start_0
    const-string v2, "getDataItem"

    invoke-static {v1, v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 154
    invoke-static {v1}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 155
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 157
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 158
    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v2

    .line 155
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/wearable/DataItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 158
    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v2
.end method

.method public getDataItemAsync(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;

    .prologue
    .line 209
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/wearable/gmsclient/DataManager;->makeWearUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 211
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataItemBuffer;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/DataManager$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/wearable/gmsclient/DataManager$4;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 236
    return-void
.end method

.method public getDataItems()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    .line 251
    .local v0, "result":Lcom/google/android/gms/wearable/DataItemBuffer;
    :try_start_0
    const-string v1, "getDataItems"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 252
    invoke-static {v0}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 255
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 255
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1
.end method

.method public getDataItemsAsync(Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;

    .prologue
    .line 271
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/wearable/DataApi;->getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 273
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataItemBuffer;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/DataManager$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$5;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemsCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 300
    return-void
.end method

.method public putDataItem(Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/wearable/DataItem;
    .locals 4
    .param p1, "request"    # Lcom/google/android/gms/wearable/PutDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/wearable/DataApi;->putDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    .line 74
    .local v1, "result":Lcom/google/android/gms/wearable/DataApi$DataItemResult;
    const-string v2, "putDataItem"

    invoke-static {v1, v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 75
    invoke-interface {v1}, Lcom/google/android/gms/wearable/DataApi$DataItemResult;->getDataItem()Lcom/google/android/gms/wearable/DataItem;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v2

    .line 76
    .end local v1    # "result":Lcom/google/android/gms/wearable/DataApi$DataItemResult;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    new-instance v2, Lcom/google/android/wearable/gmsclient/WearableException;

    invoke-direct {v2, v0}, Lcom/google/android/wearable/gmsclient/WearableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v2

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v2, Lcom/google/android/wearable/gmsclient/WearableException;

    invoke-direct {v2, v0}, Lcom/google/android/wearable/gmsclient/WearableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public putDataItemAsync(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V
    .locals 4
    .param p1, "request"    # Lcom/google/android/gms/wearable/PutDataRequest;
    .param p2, "callback"    # Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;

    .prologue
    .line 98
    :try_start_0
    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v3, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/wearable/DataApi;->putDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 100
    .local v1, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataApi$DataItemResult;>;"
    new-instance v2, Lcom/google/android/wearable/gmsclient/DataManager$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/wearable/gmsclient/DataManager$1;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    .end local v1    # "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataApi$DataItemResult;>;"
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 116
    new-instance v2, Lcom/google/android/wearable/gmsclient/DataManager$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/wearable/gmsclient/DataManager$2;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Ljava/lang/IllegalStateException;)V

    invoke-interface {p2, v2}, Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;->onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/DataManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 125
    new-instance v2, Lcom/google/android/wearable/gmsclient/DataManager$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/wearable/gmsclient/DataManager$3;-><init>(Lcom/google/android/wearable/gmsclient/DataManager;Ljava/lang/IllegalArgumentException;)V

    invoke-interface {p2, v2}, Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;->onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    goto :goto_0
.end method
