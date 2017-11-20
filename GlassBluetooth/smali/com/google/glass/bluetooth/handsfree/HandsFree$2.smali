.class Lcom/google/glass/bluetooth/handsfree/HandsFree$2;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


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
    .line 125
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$2;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(ZII)V
    .locals 6
    .param p1, "isConnected"    # Z
    .param p2, "remoteVersion"    # I
    .param p3, "localVersion"    # I

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    new-instance v4, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v4}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    .line 130
    .local v4, "request":Lcom/google/glass/companion/Proto$CompanionInfo;
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v2

    .line 131
    .local v2, "id":J
    iput-wide v2, v4, Lcom/google/glass/companion/Proto$CompanionInfo;->id:J

    .line 132
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/glass/companion/Proto$CompanionInfo;->setRequestLocaleInfo(Z)Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 133
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 134
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v1, v4}, Lcom/google/glass/companion/Proto$Envelope;->setCompanionInfo(Lcom/google/glass/companion/Proto$CompanionInfo;)Lcom/google/glass/companion/Proto$Envelope;

    .line 135
    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$2;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$500(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/os/Messenger;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree$2;->this$0:Lcom/google/glass/bluetooth/handsfree/HandsFree;

    invoke-static {v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->access$600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    .end local v2    # "id":J
    .end local v4    # "request":Lcom/google/glass/companion/Proto$CompanionInfo;
    :cond_0
    return-void
.end method
