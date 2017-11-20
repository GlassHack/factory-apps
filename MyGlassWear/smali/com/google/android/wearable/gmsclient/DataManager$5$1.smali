.class Lcom/google/android/wearable/gmsclient/DataManager$5$1;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager$5;->onResult(Lcom/google/android/gms/wearable/DataItemBuffer;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/wearable/DataItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/DataManager$5;

.field final synthetic val$items:Ljava/util/List;

.field final synthetic val$result:Lcom/google/android/gms/wearable/DataItemBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager$5;Lcom/google/android/gms/wearable/DataItemBuffer;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->this$1:Lcom/google/android/wearable/gmsclient/DataManager$5;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->val$result:Lcom/google/android/gms/wearable/DataItemBuffer;

    iput-object p3, p0, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
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
    .line 293
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->val$result:Lcom/google/android/gms/wearable/DataItemBuffer;

    const-string v1, "getDataItemsAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$5$1;->val$items:Ljava/util/List;

    return-object v0
.end method
