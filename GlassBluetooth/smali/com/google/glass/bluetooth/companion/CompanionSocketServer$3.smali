.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;
.super Ljava/lang/Object;
.source "CompanionSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->notifyCompanionConnected(Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

.field final synthetic val$companionServerThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;Lcom/google/glass/bluetooth/companion/CompanionServerThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->val$companionServerThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->val$companionServerThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->RFCOMM:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1300(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->addMyGlassConnectionType(I)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->val$companionServerThread:Lcom/google/glass/bluetooth/companion/CompanionServerThread;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionServerThread;->getConnectionType()Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;->TETHERING_MULTICAST:Lcom/google/glass/bluetooth/companion/CompanionServerThread$ConnectionType;

    if-ne v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$3;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$1300(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;)Lcom/google/glass/bluetooth/GlassBluetoothInterface;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/glass/bluetooth/GlassBluetoothInterface;->addMyGlassConnectionType(I)V

    goto :goto_0
.end method
