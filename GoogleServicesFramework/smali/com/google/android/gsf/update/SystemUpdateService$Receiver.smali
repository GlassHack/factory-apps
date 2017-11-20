.class public Lcom/google/android/gsf/update/SystemUpdateService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    if-eqz p2, :cond_0

    const-string v3, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/update/SystemUpdateActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    :goto_0
    return-void

    .line 313
    :cond_0
    if-eqz p2, :cond_1

    const-string v3, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-static {p1, p2}, Lcom/google/android/gsf/update/SystemUpdateService;->processUpdateLock(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 318
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 319
    :try_start_0
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-nez v4, :cond_2

    .line 320
    const/4 v4, 0x1

    const-string v5, "SystemUpdateService"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/update/SystemUpdateService;->access$102(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 321
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 323
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-static {}, Lcom/google/android/gsf/update/SystemUpdateService;->access$100()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 326
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "boot"

    if-eqz p2, :cond_3

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    move v1, v2

    .line 326
    goto :goto_1
.end method
