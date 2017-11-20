.class Lcom/google/glass/settings/ui/SyncSettingsItemView$7;
.super Ljava/lang/Object;
.source "SyncSettingsItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDelete()V
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
    .line 380
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$7;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$7;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-static {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$400(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Lcom/google/glass/sync/ITimelineSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->deleteSyncedItemsWithMedia()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->access$600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unable to trigger deletion of synced items with media."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
