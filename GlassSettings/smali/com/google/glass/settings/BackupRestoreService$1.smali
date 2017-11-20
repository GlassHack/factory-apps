.class Lcom/google/glass/settings/BackupRestoreService$1;
.super Landroid/database/ContentObserver;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/BackupRestoreService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/BackupRestoreService;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/BackupRestoreService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/BackupRestoreService;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService$1;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService$1;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-static {v1}, Lcom/google/glass/settings/BackupRestoreService;->access$100(Lcom/google/glass/settings/BackupRestoreService;)Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/settings/BackupRestoreService$AndroidIdProvider;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/settings/BackupRestoreService;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Content changed, androidId: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService$1;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-virtual {v1}, Lcom/google/glass/settings/BackupRestoreService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    iget-object v1, p0, Lcom/google/glass/settings/BackupRestoreService$1;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-static {v1}, Lcom/google/glass/settings/BackupRestoreService;->access$300(Lcom/google/glass/settings/BackupRestoreService;)V

    .line 70
    :cond_0
    return-void
.end method
