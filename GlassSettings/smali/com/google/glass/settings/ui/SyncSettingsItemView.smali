.class public Lcom/google/glass/settings/ui/SyncSettingsItemView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "SyncSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private isSyncActive:Z

.field private pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

.field private selectedItemId:I

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final startDeleteConfirmationListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

.field private final startDeleteListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

.field private final startSyncListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

.field private timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

.field private final timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

.field private final timelineSyncServiceListener:Lcom/google/glass/sync/ITimelineSyncListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x8

    .line 164
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v5, Lcom/google/glass/sync/PendingSyncSummary;->UNINITIALIZED:Lcom/google/glass/sync/PendingSyncSummary;

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    .line 59
    new-instance v5, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$1;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceListener:Lcom/google/glass/sync/ITimelineSyncListener;

    .line 91
    new-instance v5, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;

    sget-object v6, Lcom/google/glass/sync/SyncHelper;->TIMELINE_SYNC_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-direct {v5, p0, v6}, Lcom/google/glass/settings/ui/SyncSettingsItemView$2;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;Landroid/content/ComponentName;)V

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    .line 118
    new-instance v5, Lcom/google/glass/settings/ui/SyncSettingsItemView$3;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$3;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDeleteConfirmationListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 131
    new-instance v5, Lcom/google/glass/settings/ui/SyncSettingsItemView$4;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$4;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDeleteListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 149
    new-instance v5, Lcom/google/glass/settings/ui/SyncSettingsItemView$5;

    invoke-direct {v5, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$5;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startSyncListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 165
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$layout;->sync_settings_item:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 167
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    .local v0, "header":Landroid/widget/TextView;
    sget v5, Lcom/google/glass/settings/ui/R$string;->sync_settings_header:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 169
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 170
    .local v4, "syncMessageScanning":Landroid/widget/TextView;
    sget v5, Lcom/google/glass/settings/ui/R$string;->sync_message_scanning:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 173
    .local v1, "messageAllSynced":Landroid/widget/TextView;
    sget v5, Lcom/google/glass/settings/ui/R$string;->sync_message_all_synced:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 174
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_extra_details1:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 177
    .local v2, "messageProgress":Landroid/widget/TextView;
    sget v5, Lcom/google/glass/settings/ui/R$string;->sync_message_progress:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    sget v5, Lcom/google/glass/settings/ui/R$id;->setting_extra_details2:I

    invoke-virtual {p0, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 181
    .local v3, "messageUnsynced":Landroid/widget/TextView;
    sget v5, Lcom/google/glass/settings/ui/R$string;->sync_message_unsynced_items:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/sound/SoundManager;

    iput-object v5, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/settings/ui/SyncSettingsItemView;Lcom/google/glass/sync/PendingSyncSummary;)Lcom/google/glass/sync/PendingSyncSummary;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/sync/PendingSyncSummary;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->render()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/settings/ui/SyncSettingsItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getTotalUnsyncedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isSyncActive:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/settings/ui/SyncSettingsItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isSyncActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->updatePendingSyncSummaryAndRender()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Lcom/google/glass/sync/ITimelineSyncService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/settings/ui/SyncSettingsItemView;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;
    .param p1, "x1"    # Lcom/google/glass/sync/ITimelineSyncService;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/SyncSettingsItemView;)Lcom/google/glass/sync/ITimelineSyncListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceListener:Lcom/google/glass/sync/ITimelineSyncListener;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showStartDeleteTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDelete()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startSync()V

    return-void
.end method

.method private getDeleteSubMessage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 306
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v0}, Lcom/google/glass/sync/PendingSyncSummary;->getSyncedMediaCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->sync_message_clear_will_remove_one:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->sync_message_clear_will_remove:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    .line 309
    invoke-virtual {v4}, Lcom/google/glass/sync/PendingSyncSummary;->getSyncedMediaCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSyncAllSubMessage(ZI)Ljava/lang/String;
    .locals 7
    .param p1, "isConnected"    # Z
    .param p2, "totalUnsyncedCount"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 268
    if-nez p1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_connectivity_required:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 272
    :cond_0
    if-nez p2, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work_zero:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    .line 277
    invoke-virtual {v1}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedPhotoBytes()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v3}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedVideoBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 276
    invoke-static {v1, v2}, Lcom/google/glass/util/StorageHelper;->getHumanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "totalBytesReadable":Ljava/lang/String;
    if-ne p2, v5, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work_one:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSyncPhotosSubMessage(ZI)Ljava/lang/String;
    .locals 7
    .param p1, "isConnected"    # Z
    .param p2, "photosUnsyncedCount"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 287
    if-nez p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_connectivity_required:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    :goto_0
    return-object v1

    .line 291
    :cond_0
    if-nez p2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work_zero:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    .line 296
    invoke-virtual {v1}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedPhotoBytes()J

    move-result-wide v1

    .line 295
    invoke-static {v1, v2}, Lcom/google/glass/util/StorageHelper;->getHumanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "photoBytesReadable":Ljava/lang/String;
    if-ne p2, v5, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work_one:I

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_pending_work:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 301
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    .line 300
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTotalUnsyncedCount()I
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v1}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedPhotosCount()I

    move-result v0

    .line 366
    .local v0, "totalCount":I
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 367
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v1}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedVideosCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_0
    return v0
.end method

.method private isConnected()Z
    .locals 4

    .prologue
    .line 446
    .line 447
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 448
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 449
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private render()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$6;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method private safeGetOverridePolicy()Lcom/google/glass/sync/OverridePolicy;
    .locals 4

    .prologue
    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 438
    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->getOverridePolicy()Lcom/google/glass/sync/OverridePolicy;

    move-result-object v1

    .line 441
    :goto_0
    return-object v1

    .line 438
    :cond_0
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to get override policy."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    sget-object v1, Lcom/google/glass/sync/OverridePolicy;->NONE:Lcom/google/glass/sync/OverridePolicy;

    goto :goto_0
.end method

.method private safeSetOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V
    .locals 4
    .param p1, "overridePolicy"    # Lcom/google/glass/sync/OverridePolicy;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v1, p1}, Lcom/google/glass/sync/ITimelineSyncService;->setOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to set override policy."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showDeleteConfirmation()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_delete_50:I

    .line 327
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDeleteConfirmationListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 328
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->sync_action_confirm:I

    .line 329
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 330
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getDeleteSubMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 324
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 332
    return-void
.end method

.method private showStartDeleteTimer()V
    .locals 5

    .prologue
    .line 335
    sget v1, Lcom/google/glass/settings/ui/R$string;->sync_message_clearing:I

    .line 336
    .local v1, "temporaryMessage":I
    sget v0, Lcom/google/glass/settings/ui/R$string;->sync_message_cleared:I

    .line 338
    .local v0, "message":I
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 339
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startDeleteListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 340
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 342
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_delete_50:I

    .line 343
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    .line 338
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 346
    return-void
.end method

.method private showStartSyncTimer()V
    .locals 5

    .prologue
    .line 349
    sget v1, Lcom/google/glass/settings/ui/R$string;->sync_message_starting:I

    .line 350
    .local v1, "temporaryMessage":I
    sget v0, Lcom/google/glass/settings/ui/R$string;->sync_message_started:I

    .line 352
    .local v0, "message":I
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 353
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->startSyncListener:Lcom/google/glass/widget/MessageDialog$SimpleListener;

    .line 354
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 355
    invoke-virtual {v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 356
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_sync_50:I

    .line 357
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    .line 352
    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showDialog(Lcom/google/glass/widget/MessageDialog;)V

    .line 360
    return-void
.end method

.method private startDelete()V
    .locals 3

    .prologue
    .line 374
    sget-object v0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting to delete synced media..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MANUAL_CLEAR_SYNCED_MEDIA_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 378
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 380
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/SyncSettingsItemView$7;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$7;-><init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 391
    :cond_0
    return-void
.end method

.method private startSync()V
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isSyncActive:Z

    .line 399
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->updatePendingSyncSummaryAndRender()V

    .line 401
    iget v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->selectedItemId:I

    sget v1, Lcom/google/glass/settings/ui/R$id;->sync_item_all:I

    if-ne v0, v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->syncAll()V

    .line 404
    :cond_0
    iget v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->selectedItemId:I

    sget v1, Lcom/google/glass/settings/ui/R$id;->sync_item_photos:I

    if-ne v0, v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->syncPhotos()V

    .line 407
    :cond_1
    return-void
.end method

.method private syncAll()V
    .locals 3

    .prologue
    .line 410
    sget-object v0, Lcom/google/glass/sync/OverridePolicy;->ALL_MEDIA:Lcom/google/glass/sync/OverridePolicy;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->safeSetOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 411
    sget-object v0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting to sync all..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_ALL_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 413
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->MANUAL_SYNC:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 414
    return-void
.end method

.method private syncPhotos()V
    .locals 3

    .prologue
    .line 417
    sget-object v0, Lcom/google/glass/sync/OverridePolicy;->PHOTOS:Lcom/google/glass/sync/OverridePolicy;

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->safeSetOverridePolicy(Lcom/google/glass/sync/OverridePolicy;)V

    .line 418
    sget-object v0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting to sync photos..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MANUAL_SYNC_PHOTOS_REQUESTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 420
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.glass.sync.timeline"

    sget-object v2, Lcom/google/glass/sync/SyncHelper$SyncSource;->MANUAL_SYNC:Lcom/google/glass/sync/SyncHelper$SyncSource;

    invoke-static {v0, v1, v2}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V

    .line 421
    return-void
.end method

.method private updatePendingSyncSummaryAndRender()V
    .locals 4

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    invoke-interface {v1}, Lcom/google/glass/sync/ITimelineSyncService;->updatePendingSyncSummaryAndNotify()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->render()V

    .line 217
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to update pending sync summary and notify listeners."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onAttachedToWindow()V

    .line 190
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 191
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 195
    invoke-super {p0}, Lcom/google/glass/settings/ui/SettingsCard;->onDetachedFromWindow()V

    .line 197
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceListener:Lcom/google/glass/sync/ITimelineSyncListener;

    invoke-interface {v1, v2}, Lcom/google/glass/sync/ITimelineSyncService;->removeListener(Lcom/google/glass/sync/ITimelineSyncListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->timelineSyncServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 205
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/google/glass/settings/ui/SyncSettingsItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to remove timeline sync service listener."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->selectedItemId:I

    .line 315
    iget v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->selectedItemId:I

    sget v1, Lcom/google/glass/settings/ui/R$id;->sync_item_clear:I

    if-ne v0, v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showDeleteConfirmation()V

    .line 320
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->showStartSyncTimer()V

    goto :goto_0
.end method

.method public onPrepareMenu(Landroid/view/MenuInflater;Landroid/view/Menu;Z)Z
    .locals 10
    .param p1, "menuInflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "voiceMenu"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 241
    if-eqz p3, :cond_0

    .line 264
    :goto_0
    return v8

    .line 244
    :cond_0
    sget v6, Lcom/google/glass/settings/ui/R$menu;->sync_settings_menu:I

    invoke-virtual {p1, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 246
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isConnected()Z

    move-result v1

    .line 248
    .local v1, "isConnected":Z
    sget v6, Lcom/google/glass/settings/ui/R$id;->sync_item_all:I

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 249
    .local v3, "syncAll":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getTotalUnsyncedCount()I

    move-result v5

    .line 250
    .local v5, "totalUnsyncedCount":I
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v6

    .line 251
    invoke-direct {p0, v1, v5}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getSyncAllSubMessage(ZI)Ljava/lang/String;

    move-result-object v9

    .line 250
    invoke-virtual {v6, v3, v9}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 252
    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isSyncActive:Z

    if-nez v6, :cond_2

    if-lez v5, :cond_2

    move v6, v7

    :goto_1
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 254
    sget v6, Lcom/google/glass/settings/ui/R$id;->sync_item_photos:I

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 255
    .local v4, "syncPhotos":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v6}, Lcom/google/glass/sync/PendingSyncSummary;->getUnsyncedPhotosCount()I

    move-result v2

    .line 256
    .local v2, "photosUnsyncedCount":I
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v6

    .line 257
    invoke-direct {p0, v1, v2}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getSyncPhotosSubMessage(ZI)Ljava/lang/String;

    move-result-object v9

    .line 256
    invoke-virtual {v6, v4, v9}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 258
    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->isSyncActive:Z

    if-nez v6, :cond_3

    if-lez v2, :cond_3

    move v6, v7

    :goto_2
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 260
    sget v6, Lcom/google/glass/settings/ui/R$id;->sync_item_clear:I

    invoke-interface {p2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 261
    .local v0, "clearSynced":Landroid/view/MenuItem;
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v6

    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getDeleteSubMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v9}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 262
    iget-object v6, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView;->pendingSyncSummary:Lcom/google/glass/sync/PendingSyncSummary;

    invoke-virtual {v6}, Lcom/google/glass/sync/PendingSyncSummary;->getSyncedMediaCount()I

    move-result v6

    if-lez v6, :cond_1

    move v8, v7

    :cond_1
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v8, v7

    .line 264
    goto :goto_0

    .end local v0    # "clearSynced":Landroid/view/MenuItem;
    .end local v2    # "photosUnsyncedCount":I
    .end local v4    # "syncPhotos":Landroid/view/MenuItem;
    :cond_2
    move v6, v8

    .line 252
    goto :goto_1

    .restart local v2    # "photosUnsyncedCount":I
    .restart local v4    # "syncPhotos":Landroid/view/MenuItem;
    :cond_3
    move v6, v8

    .line 258
    goto :goto_2
.end method
