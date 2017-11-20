.class Lcom/google/glass/settings/BackupRestoreService$2;
.super Ljava/lang/Object;
.source "BackupRestoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/google/glass/settings/BackupRestoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/BackupRestoreService;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/settings/BackupRestoreService$2;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/glass/settings/BackupRestoreService$2;->this$0:Lcom/google/glass/settings/BackupRestoreService;

    invoke-static {v0}, Lcom/google/glass/settings/BackupRestoreService;->access$300(Lcom/google/glass/settings/BackupRestoreService;)V

    .line 85
    return-void
.end method
