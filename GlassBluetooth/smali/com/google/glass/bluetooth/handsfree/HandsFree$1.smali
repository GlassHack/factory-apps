.class Lcom/google/glass/bluetooth/handsfree/HandsFree$1;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 113
    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v2}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Should we connect to AG on: %s? %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connect()V

    .line 119
    :cond_1
    return-void
.end method
