.class Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;
.super Landroid/os/AsyncTask;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    iget-object v0, v0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isConnected"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    iget-object v2, v2, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-static {v2}, Lcom/google/glass/connectivity/InetConnectionState;->access$100(Lcom/google/glass/connectivity/InetConnectionState;)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 147
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    iget-object v1, v1, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/glass/connectivity/InetConnectionState;->access$102(Lcom/google/glass/connectivity/InetConnectionState;Z)Z

    .line 144
    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->this$1:Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;

    iget-object v1, v1, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-static {v1}, Lcom/google/glass/connectivity/InetConnectionState;->access$200(Lcom/google/glass/connectivity/InetConnectionState;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/connectivity/InetConnectionState$Listener;

    .line 145
    .local v0, "listener":Lcom/google/glass/connectivity/InetConnectionState$Listener;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/glass/connectivity/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$ConnectivityBroadcastReceiver$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
