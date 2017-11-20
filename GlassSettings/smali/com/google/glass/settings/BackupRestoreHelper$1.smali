.class Lcom/google/glass/settings/BackupRestoreHelper$1;
.super Ljava/lang/Object;
.source "BackupRestoreHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/BackupRestoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/BackupRestoreHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/BackupRestoreHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/BackupRestoreHelper;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreHelper$1;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/settings/BackupRestoreHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Waiting for restore to finish"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 59
    invoke-static {}, Lcom/google/glass/settings/BackupRestoreHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Restore Finished, takes %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/glass/settings/BackupRestoreHelper$1;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v6}, Lcom/google/glass/settings/BackupRestoreHelper;->access$100(Lcom/google/glass/settings/BackupRestoreHelper;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$1;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreHelper;->access$200(Lcom/google/glass/settings/BackupRestoreHelper;)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreHelper$1;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreHelper;->access$400(Lcom/google/glass/settings/BackupRestoreHelper;)Lcom/google/glass/util/IntentSender;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreHelper$1;->this$0:Lcom/google/glass/settings/BackupRestoreHelper;

    invoke-static {v1}, Lcom/google/glass/settings/BackupRestoreHelper;->access$300(Lcom/google/glass/settings/BackupRestoreHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/glass/util/IntentSender;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method
