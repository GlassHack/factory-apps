.class Lcom/google/android/wearable/gmsclient/DataManager$1$1;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager$1;->onResult(Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V
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
.field final synthetic this$1:Lcom/google/android/wearable/gmsclient/DataManager$1;

.field final synthetic val$result:Lcom/google/android/gms/wearable/DataApi$DataItemResult;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager$1;Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$1$1;->this$1:Lcom/google/android/wearable/gmsclient/DataManager$1;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$DataItemResult;

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
    .line 109
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    const-string v1, "putDataItemAsync"

    invoke-static {v0, v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->throwIfFailed(Lcom/google/android/gms/common/api/Result;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$1$1;->val$result:Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/DataApi$DataItemResult;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

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
    .line 105
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/DataManager$1$1;->getResult()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    return-object v0
.end method
