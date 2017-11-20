.class Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;
.super Landroid/os/AsyncTask;
.source "ClockworkProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/clockwork/proxy/ClockworkProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckIfConnectedAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/proxy/ClockworkProxy;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    iget-object v1, v1, Lcom/google/android/clockwork/proxy/ClockworkProxy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->getNodeManager()Lcom/google/android/wearable/gmsclient/NodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->getConnectedNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 453
    :goto_1
    return-object v1

    :cond_0
    move v1, v2

    .line 446
    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClockworkProxy"

    const-string v3, "RemoteException checking if node is connected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 450
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v1, "ClockworkProxy"

    const-string v3, "Error checking if node is connected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 441
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasPreExistingConnections"    # Ljava/lang/Boolean;

    .prologue
    .line 459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const-string v0, "ClockworkProxy"

    const-string v1, "There is pre-existing connection, restarting proxy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->this$0:Lcom/google/android/clockwork/proxy/ClockworkProxy;

    invoke-virtual {v0}, Lcom/google/android/clockwork/proxy/ClockworkProxy;->startProxyService()V

    .line 463
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 441
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/proxy/ClockworkProxy$CheckIfConnectedAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
