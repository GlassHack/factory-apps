.class Lcom/google/android/wearable/gmsclient/DataManager$6$1;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager$6;->onResult(Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;)V
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
        "Lcom/google/android/gms/wearable/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/DataManager$6;

.field final synthetic val$result:Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager$6;Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$6$1;->this$1:Lcom/google/android/wearable/gmsclient/DataManager$6;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$6$1;->val$result:Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/google/android/gms/wearable/DataItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/wearable/gmsclient/WearableException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$6$1;->val$result:Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    const-string v1, "deleteDataItemAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    return-object v0
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
    .line 340
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/DataManager$6$1;->getResult()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    return-object v0
.end method
