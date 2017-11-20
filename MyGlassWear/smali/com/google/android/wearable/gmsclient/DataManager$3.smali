.class Lcom/google/android/wearable/gmsclient/DataManager$3;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager;->putDataItemAsync(Lcom/google/android/gms/wearable/PutDataRequest;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V
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
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/DataManager;

.field final synthetic val$e:Ljava/lang/IllegalArgumentException;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$3;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$3;->val$e:Ljava/lang/IllegalArgumentException;

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
    .line 129
    new-instance v0, Lcom/google/android/wearable/gmsclient/WearableException;

    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/DataManager$3;->val$e:Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Lcom/google/android/wearable/gmsclient/WearableException;-><init>(Ljava/lang/Throwable;)V

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
    .line 126
    invoke-virtual {p0}, Lcom/google/android/wearable/gmsclient/DataManager$3;->getResult()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v0

    return-object v0
.end method
