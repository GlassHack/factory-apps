.class Lcom/google/glass/settings/BackupRestoreService$3;
.super Ljava/lang/Object;
.source "BackupRestoreService.java"

# interfaces
.implements Lcom/google/glass/settings/BackupRestoreHelper$SettingsRestoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/BackupRestoreService;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/BackupRestoreService;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/BackupRestoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/BackupRestoreService;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService$3;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsRestored(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService$3;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreScheduler;->markRestored(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService$3;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreScheduler;->scheduleForNextRestore(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService$3;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-virtual {v0}, Lcom/google/glass/settings/BackupRestoreService;->stopSelf()V

    .line 116
    return-void
.end method
