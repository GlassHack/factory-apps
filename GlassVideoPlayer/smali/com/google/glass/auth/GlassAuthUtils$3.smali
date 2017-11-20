.class Lcom/google/glass/auth/GlassAuthUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/GlassAuthUtils;

.field final synthetic val$reboot:Z

.field final synthetic val$wasSetupFinished:Z


# direct methods
.method constructor <init>(Lcom/google/glass/auth/GlassAuthUtils;ZZ)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iput-boolean p2, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->val$reboot:Z

    iput-boolean p3, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->val$wasSetupFinished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v0, v0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/a;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v0, v0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/google/glass/util/SetupHelper;->setDeviceProvision(Landroid/content/Context;Z)V

    .line 378
    iget-boolean v0, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->val$reboot:Z

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/google/glass/android/os/PowerManagerProvider;->getInstance()Lcom/google/glass/android/os/PowerManagerProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v1, v1, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/PowerManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/os/PowerManager;

    move-result-object v0

    .line 380
    const-string v1, "restartSetupProcess"

    invoke-interface {v0, v1}, Lcom/google/glass/android/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 395
    :goto_1
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Problem unregistering from GCM."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->val$wasSetupFinished:Z

    if-eqz v0, :cond_1

    .line 387
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Setup was previously finished, starting anew."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/google/glass/auth/GlassAuthUtils$3;->this$0:Lcom/google/glass/auth/GlassAuthUtils;

    iget-object v0, v0, Lcom/google/glass/auth/GlassAuthUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->startSetup(Landroid/content/Context;)V

    goto :goto_1

    .line 390
    :cond_1
    invoke-static {}, Lcom/google/glass/auth/GlassAuthUtils;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Setup was never finished, NOT starting anew."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
