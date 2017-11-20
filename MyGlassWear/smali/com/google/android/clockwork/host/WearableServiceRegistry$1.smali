.class Lcom/google/android/clockwork/host/WearableServiceRegistry$1;
.super Ljava/lang/Object;
.source "WearableServiceRegistry.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/host/WearableServiceRegistry;->registerService(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/google/android/clockwork/host/WearableServiceRegistry;

.field final synthetic val$servicePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/host/WearableServiceRegistry;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;->this$0:Lcom/google/android/clockwork/host/WearableServiceRegistry;

    iput-object p2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;->val$servicePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 95
    check-cast p1, Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    .end local p1    # "x0":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;->onResult(Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/wearable/DataApi$DataItemResult;)V
    .locals 3
    .param p1, "dataItemResult"    # Lcom/google/android/gms/wearable/DataApi$DataItemResult;

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataApi$DataItemResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "WearableServiceRegistry"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "WearableServiceRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Announced service path URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/wearable/DataApi$DataItemResult;->getDataItem()Lcom/google/android/gms/wearable/DataItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/wearable/DataItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "WearableServiceRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error announcing service path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/clockwork/host/WearableServiceRegistry$1;->val$servicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
