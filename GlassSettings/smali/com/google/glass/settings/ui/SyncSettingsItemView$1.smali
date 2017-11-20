.class Lcom/google/glass/settings/ui/SyncSettingsItemView$1;
.super Lcom/google/glass/sync/ITimelineSyncListener$Stub;
.source "SyncSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SyncSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/sync/ITimelineSyncListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePhotosAndVideosComplete()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$300(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    .line 87
    return-void
.end method

.method public onSyncCycleComplete()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$202(Lcom/google/glass/settings/ui/SyncSettingsItemView;Z)Z

    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$300(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    .line 82
    return-void
.end method

.method public onSyncItemComplete(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public onSyncItemStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$202(Lcom/google/glass/settings/ui/SyncSettingsItemView;Z)Z

    .line 70
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$300(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    .line 71
    return-void
.end method

.method public updatePendingSyncSummary(Lcom/google/glass/sync/PendingSyncSummary;)V
    .locals 1
    .param p1, "pendingSyncSummary"    # Lcom/google/glass/sync/PendingSyncSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0, p1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$002(Lcom/google/glass/settings/ui/SyncSettingsItemView;Lcom/google/glass/sync/PendingSyncSummary;)Lcom/google/glass/sync/PendingSyncSummary;

    .line 64
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$100(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    .line 65
    return-void
.end method
