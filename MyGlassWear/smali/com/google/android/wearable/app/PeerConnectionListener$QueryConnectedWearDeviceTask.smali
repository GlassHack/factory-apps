.class Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;
.super Landroid/os/AsyncTask;
.source "PeerConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/PeerConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryConnectedWearDeviceTask"
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
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->context:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {}, Lcom/google/android/wearable/app/PeerConnectionListener;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Getting ConnectionConfiguration"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v2

    .line 72
    .local v2, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    const/4 v0, 0x0

    .line 74
    .local v0, "client":Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->acquireApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lcom/google/android/wearable/app/PeerConnectionListener;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "got null Google API client"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    :cond_0
    :goto_0
    return-object v3

    .line 80
    :cond_1
    :try_start_1
    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    .line 81
    invoke-interface {v3, v0}, Lcom/google/android/gms/wearable/NodeApi;->getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    invoke-interface {v3}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "connectedNodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 85
    goto :goto_1

    .line 87
    .end local v1    # "connectedNodes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->releaseApiClient()V

    :cond_3
    throw v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isConnected"    # Ljava/lang/Boolean;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/wearable/app/PeerConnectionListener;->access$100(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/wearable/app/PeerConnectionListener$QueryConnectedWearDeviceTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
