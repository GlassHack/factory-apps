.class Lcom/google/android/wearable/gmsclient/AssetManager$2;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/AssetManager;->getInputStreamForAssetAsync(Lcom/google/android/gms/wearable/Asset;Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;)Lcom/google/android/wearable/gmsclient/WearableFuture;
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
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

.field final synthetic val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$2;->this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/AssetManager$2;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

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
    .line 59
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$2;->val$pendingResult:Lcom/google/android/gms/common/api/PendingResult;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    .line 60
    .local v0, "result":Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;
    const-string v1, "getFdForAssetAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
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
    .line 56
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/AssetManager$2;->getResult()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
