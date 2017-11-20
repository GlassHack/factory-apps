.class Lcom/google/android/wearable/gmsclient/AssetManager$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


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
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/AssetManager;Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1;->this$0:Lcom/google/android/wearable/gmsclient/AssetManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/AssetManager$1;->onResult(Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/AssetManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/AssetManager$1$1;-><init>(Lcom/google/android/wearable/gmsclient/AssetManager$1;Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/AssetManager$GetInputStreamForAssetCallback;->onGetInputStreamForAssetComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 55
    return-void
.end method
