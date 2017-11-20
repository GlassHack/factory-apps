.class Lcom/google/glass/home/HomeApplication$4;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication;->onAccountReady(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/HomeApplication;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/HomeApplication;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$4;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Triggering sync."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/glass/home/HomeApplication;->access$900(Lcom/google/glass/home/HomeApplication;Landroid/accounts/Account;)V

    .line 360
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 364
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.location"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 368
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.entity"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 372
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$4;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.settings.syncable"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->DEVICE_BOOTUP:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 376
    return-void
.end method
