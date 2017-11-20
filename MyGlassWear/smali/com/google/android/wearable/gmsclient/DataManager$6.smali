.class Lcom/google/android/wearable/gmsclient/DataManager$6;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItemAsync(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;)V
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
        "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/DataManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$6;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$6;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 335
    check-cast p1, Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$6;->onResult(Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$6;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    invoke-static {v0}, Lcom/google/android/wearable/gmsclient/DataManager;->access$000(Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 339
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$6;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/DataManager$6$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$6$1;-><init>(Lcom/google/android/wearable/gmsclient/DataManager$6;Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/DataManager$DeleteDataItemCallback;->onDeleteDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 349
    return-void
.end method
