.class Lcom/google/glass/bluetooth/handsfree/ServiceConnection$1;
.super Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;
.source "ServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->sendCommand(Ljava/lang/String;)V
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
    .line 415
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$1;->this$0:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection$Command;-><init>(Lcom/google/glass/bluetooth/handsfree/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/glass/bluetooth/handsfree/AtResult;)V
    .locals 0
    .param p1, "response"    # Lcom/google/glass/bluetooth/handsfree/AtResult;

    .prologue
    .line 419
    return-void
.end method
