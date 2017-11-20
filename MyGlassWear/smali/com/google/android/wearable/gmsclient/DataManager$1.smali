.class Lcom/google/android/wearable/gmsclient/DataManager$1;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


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
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/DataManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$1;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 100
    check-cast p1, Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$1;->onResult(Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$1;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    invoke-static {v0}, Lcom/google/android/wearable/gmsclient/DataManager;->access$000(Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 104
    iget-object v0, p0, Lcom/google/android/wearable/gmsclient/DataManager$1;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;

    new-instance v1, Lcom/google/android/wearable/gmsclient/DataManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$1$1;-><init>(Lcom/google/android/wearable/gmsclient/DataManager$1;Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V

    invoke-interface {v0, v1}, Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;->onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 113
    return-void
.end method
