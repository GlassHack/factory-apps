.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection$2;
.super Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendHandshake()V
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
    .line 438
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$2;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 1
    .param p1, "response"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$2;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->access$400(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;)Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListenerHandler;->onConnected()V

    .line 442
    return-void
.end method
