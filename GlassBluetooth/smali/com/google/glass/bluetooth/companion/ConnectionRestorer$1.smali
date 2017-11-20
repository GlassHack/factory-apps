.class Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;
.super Ljava/lang/Object;
.source "ConnectionRestorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;


# direct methods
.method constructor <init>(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->access$000(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "COMPANION_SERVICE_DATA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "LAST_CONNECTED_DEVICE_ADDRESS"

    const/4 v3, 0x0

    .line 53
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "readLastDeviceAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    monitor-enter v2

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-static {v1}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->access$100(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-static {v1, v0}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->access$102(Lcom/google/glass/bluetooth/companion/ConnectionRestorer;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/ConnectionRestorer$1;->this$0:Lcom/google/glass/bluetooth/companion/ConnectionRestorer;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/companion/ConnectionRestorer;->recover()V

    .line 60
    :cond_0
    monitor-exit v2

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
