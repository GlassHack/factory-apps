.class Lcom/google/glass/connectivity/InetConnectionState$1;
.super Landroid/os/AsyncTask;
.source "InetConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/connectivity/InetConnectionState;->addListener(Lcom/google/glass/connectivity/InetConnectionState$Listener;)V
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
.field final synthetic this$0:Lcom/google/glass/connectivity/InetConnectionState;

.field final synthetic val$listener:Lcom/google/glass/connectivity/InetConnectionState$Listener;


# direct methods
.method constructor <init>(Lcom/google/glass/connectivity/InetConnectionState;Lcom/google/glass/connectivity/InetConnectionState$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/connectivity/InetConnectionState;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    iput-object p2, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->val$listener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {v0}, Lcom/google/glass/connectivity/InetConnectionState;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isConnected"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState;->access$102(Lcom/google/glass/connectivity/InetConnectionState;Z)Z

    .line 88
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-static {v0}, Lcom/google/glass/connectivity/InetConnectionState;->access$200(Lcom/google/glass/connectivity/InetConnectionState;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->val$listener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->val$listener:Lcom/google/glass/connectivity/InetConnectionState$Listener;

    iget-object v1, p0, Lcom/google/glass/connectivity/InetConnectionState$1;->this$0:Lcom/google/glass/connectivity/InetConnectionState;

    invoke-static {v1}, Lcom/google/glass/connectivity/InetConnectionState;->access$100(Lcom/google/glass/connectivity/InetConnectionState;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/connectivity/InetConnectionState$Listener;->onConnectivityChanged(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/connectivity/InetConnectionState$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
