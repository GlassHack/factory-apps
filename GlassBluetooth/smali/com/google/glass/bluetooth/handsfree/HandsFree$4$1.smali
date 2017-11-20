.class Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$4;

.field final synthetic val$socket:Lcom/google/glass/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFree$4;Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/bluetooth/handsfree/HandsFree$4;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$4;

    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;->val$socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;->this$1:Lcom/google/glass/bluetooth/handsfree/HandsFree$4;

    iget-object v0, v0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$4$1;->val$socket:Lcom/google/glass/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startServiceConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V

    .line 257
    return-void
.end method
