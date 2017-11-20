.class Lcom/google/android/wearable/gmsclient/DataManager$4;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/gmsclient/DataManager;->getDataItemAsync(Ljava/lang/String;Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;)V
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
        "Lcom/google/android/gms/wearable/DataItemBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/gmsclient/DataManager;

.field final synthetic val$callback:Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/wearable/gmsclient/DataManager$4;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    iput-object p2, p0, Lcom/google/android/wearable/gmsclient/DataManager$4;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 211
    check-cast p1, Lcom/google/android/gms/wearable/DataItemBuffer;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/wearable/gmsclient/DataManager$4;->onResult(Lcom/google/android/gms/wearable/DataItemBuffer;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataItemBuffer;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/wearable/DataItemBuffer;

    .prologue
    .line 220
    invoke-static {p1}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 221
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataItem;>;"
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataItemBuffer;->close()V

    .line 222
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/DataManager$4;->this$0:Lcom/google/android/wearable/gmsclient/DataManager;

    invoke-static {v1}, Lcom/google/android/wearable/gmsclient/DataManager;->access$000(Lcom/google/android/wearable/gmsclient/DataManager;)Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/GoogleApiClientHelper;->release()V

    .line 225
    iget-object v1, p0, Lcom/google/android/wearable/gmsclient/DataManager$4;->val$callback:Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;

    new-instance v2, Lcom/google/android/wearable/gmsclient/DataManager$4$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/wearable/gmsclient/DataManager$4$1;-><init>(Lcom/google/android/wearable/gmsclient/DataManager$4;Lcom/google/android/gms/wearable/DataItemBuffer;Ljava/util/List;)V

    invoke-interface {v1, v2}, Lcom/google/android/wearable/gmsclient/DataManager$GetDataItemCallback;->onGetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V

    .line 235
    return-void
.end method
