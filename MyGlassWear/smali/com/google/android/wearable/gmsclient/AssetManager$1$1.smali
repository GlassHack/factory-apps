.class Lcom/google/android/wearable/gmsclient/AssetManager$1$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/AssetManager$1;->onResult(Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/wearable/gmsclient/WearableFuture",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/AssetManager$1;

.field final synthetic val$result:Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/AssetManager$1;Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/AssetManager$1;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    const-string v1, "getFdForAssetAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/AssetManager$1;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/AssetManager$1;->this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/AssetManager;->access$000(Lcom/google/android/wearable/gmsclient/AssetManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/AssetManager$1;

    iget-object v1, v1, Lcom/google/android/wearable/gmsclient/AssetManager$1;->this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/AssetManager;->access$000(Lcom/google/android/wearable/gmsclient/AssetManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    throw v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;->getResult()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
