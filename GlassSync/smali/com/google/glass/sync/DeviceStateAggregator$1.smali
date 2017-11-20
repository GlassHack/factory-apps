.class Lcom/google/glass/sync/DeviceStateAggregator$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "DeviceStateAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/DeviceStateAggregator;-><init>(Landroid/content/Context;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/util/PowerHelper;Lcom/google/glass/util/WifiHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/SafeServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/DeviceStateAggregator;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/DeviceStateAggregator;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/DeviceStateAggregator;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/glass/sync/DeviceStateAggregator$1;->this$0:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/sync/DeviceStateAggregator$1;->this$0:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-static {v0}, Lcom/google/glass/sync/DeviceStateAggregator;->access$000(Lcom/google/glass/sync/DeviceStateAggregator;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/sync/DeviceStateAggregator$1;->this$0:Lcom/google/glass/sync/DeviceStateAggregator;

    invoke-static {p2}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncService;

    move-result-object v1

    iput-object v1, v0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 82
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/sync/DeviceStateAggregator$1;->this$0:Lcom/google/glass/sync/DeviceStateAggregator;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/glass/sync/DeviceStateAggregator;->timelineSyncService:Lcom/google/glass/sync/ITimelineSyncService;

    .line 88
    return-void
.end method
