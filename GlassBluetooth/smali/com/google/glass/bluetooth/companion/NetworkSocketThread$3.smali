.class Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;
.super Ljava/lang/Object;
.source "NetworkSocketThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->notifySetupStatusChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$300(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$400(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "update txtmap right after setup!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v0}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$400(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/NetworkSocketThread$3;->this$0:Lcom/google/glass/bluetooth/companion/NetworkSocketThread;

    invoke-static {v2}, Lcom/google/glass/bluetooth/companion/NetworkSocketThread;->access$500(Lcom/google/glass/bluetooth/companion/NetworkSocketThread;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    .line 291
    :cond_0
    monitor-exit v1

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
