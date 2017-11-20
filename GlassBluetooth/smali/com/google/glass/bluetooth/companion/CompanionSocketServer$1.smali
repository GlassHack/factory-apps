.class Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;
.super Landroid/util/LruCache;
.source "CompanionSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Landroid/os/Messenger;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/CompanionSocketServer;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
    .param p2, "x0"    # I

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;->this$0:Lcom/google/glass/bluetooth/companion/CompanionSocketServer;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Long;Landroid/os/Messenger;Landroid/os/Messenger;)V
    .locals 4
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/Long;
    .param p3, "oldHandler"    # Landroid/os/Messenger;
    .param p4, "newHandler"    # Landroid/os/Messenger;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-static {}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "evicting handler with key %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 177
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Landroid/os/Messenger;

    check-cast p4, Landroid/os/Messenger;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$1;->entryRemoved(ZLjava/lang/Long;Landroid/os/Messenger;Landroid/os/Messenger;)V

    return-void
.end method
