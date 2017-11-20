.class Lcom/google/glass/settings/ui/SyncSettingsItemView$2;
.super Lcom/google/glass/util/SafeServiceConnection;
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
.method constructor <init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {p2}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$402(Lcom/google/glass/settings/ui/SyncSettingsItemView;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$400(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Lcom/google/glass/sync/ITimelineSyncService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$500(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Lcom/google/glass/sync/ITimelineSyncListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/sync/ITimelineSyncService;->addListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unable to add timeline sync service listener."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$402(Lcom/google/glass/settings/ui/SyncSettingsItemView;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;

    .line 106
    return-void
.end method
