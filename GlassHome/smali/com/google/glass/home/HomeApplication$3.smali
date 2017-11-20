.class Lcom/google/glass/home/HomeApplication$3;
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
    .line 324
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$3;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 328
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Enabling sync."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.sync.timeline"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.entity"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.location"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.settings.syncable"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$000(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Registering for GCM."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$700(Lcom/google/glass/home/HomeApplication;)Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-virtual {v1}, Lcom/google/glass/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/HomeApplication$RetryGcmRegistrationBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$3;->this$0:Lcom/google/glass/home/HomeApplication;

    invoke-static {v0}, Lcom/google/glass/home/HomeApplication;->access$800(Lcom/google/glass/home/HomeApplication;)V

    .line 340
    return-void
.end method
