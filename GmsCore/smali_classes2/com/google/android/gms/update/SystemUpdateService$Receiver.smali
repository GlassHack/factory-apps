.class public Lcom/google/android/gms/update/SystemUpdateService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 361
    const-string v1, "SystemUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Lcom/google/android/gms/c/a;->a()Lcom/google/android/gms/c/a;

    move-result-object v1

    .line 363
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/update/SystemUpdateService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 374
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/update/SystemUpdateService;->b(Landroid/content/Context;)V

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gms/update/SystemUpdateService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "boot"

    if-eqz p2, :cond_1

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
