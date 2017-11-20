.class public Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;
.super Lcom/google/android/glass/app/DirectRenderingService;
.source "BatteryUIDirectRenderingService.java"


# static fields
.field public static final BATTERY_ACTIONS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_ID_LOW_BATTERY:I = 0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private battery:Lcom/google/glass/util/BatteryHelper;

.field private final batteryBroadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->BATTERY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/glass/app/DirectRenderingService;-><init>()V

    .line 41
    new-instance v0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService$1;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService$1;-><init>(Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->batteryBroadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->updateUI()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static hide(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 146
    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 131
    invoke-static {}, Lcom/google/glass/android/app/NotificationManagerProvider;->getInstance()Lcom/google/glass/android/app/NotificationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/app/NotificationManagerProvider;->get(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/settings/ui/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    .line 134
    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/glass/app/ContextualNotification;

    invoke-direct {v2}, Lcom/google/android/glass/app/ContextualNotification;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-virtual {v2, v3}, Lcom/google/android/glass/app/ContextualNotification;->setRenderer(Landroid/content/ComponentName;)Lcom/google/android/glass/app/ContextualNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 139
    return-void
.end method

.method private updateUI()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 85
    iget-object v7, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v3

    .line 88
    .local v3, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    sget v7, Lcom/google/glass/settings/ui/R$id;->battery_state_image:I

    .line 89
    invoke-direct {p0, v7}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/BatteryStateImageView;

    .line 90
    .local v0, "batteryStateImage":Lcom/google/glass/settings/ui/BatteryStateImageView;
    invoke-virtual {v0, v3}, Lcom/google/glass/settings/ui/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 93
    sget v7, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-direct {p0, v7}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, "batteryStateText":Landroid/widget/TextView;
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v7, :cond_0

    .line 97
    sget v7, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_charged:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 98
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-boolean v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v7, :cond_1

    .line 102
    sget v4, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_percent_charging:I

    .line 108
    .local v4, "text":I
    :goto_1
    iget v7, v3, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    float-to-int v2, v7

    .line 109
    .local v2, "percent":I
    if-gt v2, v8, :cond_2

    .line 110
    sget v7, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_low:I

    invoke-virtual {p0, v7}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "textStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const/16 v7, 0x1e

    if-le v2, v7, :cond_3

    .line 117
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 123
    .local v5, "textColor":I
    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 104
    .end local v2    # "percent":I
    .end local v4    # "text":I
    .end local v5    # "textColor":I
    .end local v6    # "textStr":Ljava/lang/String;
    :cond_1
    sget v4, Lcom/google/glass/settings/ui/R$string;->settings_cover_battery_percent:I

    .restart local v4    # "text":I
    goto :goto_1

    .line 112
    .restart local v2    # "percent":I
    :cond_2
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v4, v7}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "textStr":Ljava/lang/String;
    goto :goto_2

    .line 118
    :cond_3
    const/16 v7, 0xa

    if-le v2, v7, :cond_4

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/glass/settings/ui/R$color;->state_yellow:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .restart local v5    # "textColor":I
    goto :goto_3

    .line 121
    .end local v5    # "textColor":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .restart local v5    # "textColor":I
    goto :goto_3
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onCreate()V

    .line 60
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 61
    sget v0, Lcom/google/glass/settings/ui/R$layout;->settings_cover_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->setView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->view:Landroid/view/View;

    .line 62
    sget v0, Lcom/google/glass/settings/ui/R$id;->data_connection_image:I

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 64
    invoke-direct {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->updateUI()V

    .line 65
    return-void
.end method

.method protected onRenderingStarted()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onRenderingStarted()V

    .line 70
    iget-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->batteryBroadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method protected onRenderingStopped()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/glass/app/DirectRenderingService;->onRenderingStopped()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->batteryBroadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->broadcastReceiverRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 77
    return-void
.end method
