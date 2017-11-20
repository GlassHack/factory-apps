.class public Lcom/google/glass/settings/battery/BatteryStateService;
.super Landroid/app/Service;
.source "BatteryStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/battery/BatteryStateService$1;,
        Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

.field private static final batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private batteryStateReceiver:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 26
    sget-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "batteryStateReceiver"

    .line 27
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_LOW"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.BATTERY_OKAY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/settings/battery/BatteryStateService;Lcom/google/glass/settings/battery/BatteryStateService$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/battery/BatteryStateService;->batteryStateReceiver:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->ACTIONS_TO_REGISTER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/battery/BatteryStateService;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/battery/BatteryStateService;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/settings/battery/BatteryStateService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/settings/battery/BatteryStateService;->batteryStateReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/battery/BatteryStateService;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/battery/BatteryStateService;->batteryStateReceiver:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/battery/BatteryStateService;->batteryStateReceiver:Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/battery/BatteryStateService$BatteryStateBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    return-void
.end method
