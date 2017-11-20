.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;
.super Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->rejectCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 3
    .param p1, "response"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/handsfree/AtResult;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallSetupStateChanged(I)V

    .line 469
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$3;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onCallStateChanged(I)V

    .line 471
    :cond_0
    return-void
.end method
