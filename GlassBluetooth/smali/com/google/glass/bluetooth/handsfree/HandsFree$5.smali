.class Lcom/google/glass/bluetooth/handsfree/HandsFree$5;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/handsfree/HandsFree;->handleConnectError(Ljava/lang/Exception;)V
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
    .line 267
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$5;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$5;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$1200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onDisconnected()V

    .line 271
    return-void
.end method
