.class public Lcom/google/android/wearable/gmsclient/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;,
        Lcom/google/android/wearable/gmsclient/AssetManager$GetBytesForAssetCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;)V
    .locals 0
    .param p1, "clientHelper"    # Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/wearable/gmsclient/AssetManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/wearable/gmsclient/AssetManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    return-object v0
.end method


# virtual methods
.method public getBitmapForAsset(Lcom/google/android/gms/wearable/Asset;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/AssetManager;->getInputStreamForAsset(Lcom/google/android/gms/wearable/Asset;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 98
    :goto_0
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .line 96
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getFdForAsset(Lcom/google/android/gms/wearable/Asset;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/wearable/DataApi;->getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    .line 70
    .local v0, "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFdForAssets failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1

    .line 73
    .restart local v0    # "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getFd()Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1
.end method

.method public getInputStreamForAsset(Lcom/google/android/gms/wearable/Asset;)Ljava/io/InputStream;
    .locals 4
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/wearable/DataApi;->getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    .line 83
    .local v0, "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInputStreamForAssets failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v0    # "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v1

    .line 86
    .restart local v0    # "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v1
.end method

.method public getInputStreamForAssetAsync(Lcom/google/android/gms/wearable/Asset;Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
    .locals 3
    .param p1, "asset"    # Lcom/google/android/gms/wearable/Asset;
    .param p2, "callback"    # Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/Asset;",
            "Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;",
            ")",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v1, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v2, p0, Lcom/google/android/wearable/gmsclient/AssetManager;->mClientHelper:Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->acquire()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/wearable/DataApi;->getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 38
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;>;"
    new-instance v1, Lcom/google/android/wearable/gmsclient/AssetManager$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/wearable/gmsclient/AssetManager$1;-><init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 56
    new-instance v1, Lcom/google/android/wearable/gmsclient/AssetManager$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/wearable/gmsclient/AssetManager$2;-><init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/common/api/PendingResult;)V

    return-object v1
.end method
