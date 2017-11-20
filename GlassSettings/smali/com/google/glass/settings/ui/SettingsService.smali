.class public Lcom/google/glass/settings/ui/SettingsService;
.super Landroid/app/Service;
.source "SettingsService.java"


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONNECTIVITY_ACTIONS:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALE_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final SETTINGS_COVER_LIVE_CARD_TAG:Ljava/lang/String; = "settings_cover_live_card"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private batteryHelper:Lcom/google/glass/util/BatteryHelper;

.field private final broadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/SettingsService;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    const-string v0, "android.net.wifi.STATE_CHANGE"

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/SettingsService;->CONNECTIVITY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/SettingsService;->CONNECTIVITY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->BATTERY_ACTIONS:Lcom/google/common/collect/ImmutableList;

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/SettingsService;->ACTIONS_TO_REGISTER_RECEIVER_FOR:Lcom/google/common/collect/ImmutableList;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Lcom/google/glass/settings/ui/SettingsService$1;

    sget-object v1, Lcom/google/glass/settings/ui/SettingsService;->ACTIONS_TO_REGISTER_RECEIVER_FOR:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/SettingsService$1;-><init>(Lcom/google/glass/settings/ui/SettingsService;Ljava/lang/Iterable;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->broadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/SettingsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/SettingsService;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SettingsService;->onBatteryChanged()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/settings/ui/SettingsService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    sget-object v0, Lcom/google/glass/settings/ui/SettingsService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/settings/ui/SettingsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    return-void
.end method

.method private onBatteryChanged()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->updateBattery()V

    .line 133
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->getChargePercent()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/google/glass/settings/ui/BatteryUIDirectRenderingService;->show(Landroid/content/Context;)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    const-string v5, "SettingsCoverLiveCard: [visible=%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 159
    invoke-virtual {v7}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v4

    .line 158
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v5, Lcom/google/glass/settings/ui/SettingsService$2;

    invoke-direct {v5, p0, p2}, Lcom/google/glass/settings/ui/SettingsService$2;-><init>(Lcom/google/glass/settings/ui/SettingsService;Ljava/io/PrintWriter;)V

    .line 171
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v3}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Void;

    .line 170
    invoke-virtual {v5, v3, v6}, Lcom/google/glass/settings/ui/SettingsService$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    .line 173
    .local v2, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :try_start_0
    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_1
    new-instance v3, Lcom/google/glass/update/AndroidUpdate;

    invoke-direct {v3, p0}, Lcom/google/glass/update/AndroidUpdate;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void

    .end local v2    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :cond_0
    move v3, v4

    .line 159
    goto :goto_0

    .line 174
    .restart local v2    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 176
    const-string v1, "Interrupted while dumping checkin info."

    .line 177
    .local v1, "message":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/settings/ui/SettingsService;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "message":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "Execution failed while dumping checkin info."

    .line 181
    .restart local v1    # "message":Ljava/lang/String;
    sget-object v3, Lcom/google/glass/settings/ui/SettingsService;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 94
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    .local v1, "appContext":Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->batteryHelper:Lcom/google/glass/util/BatteryHelper;

    .line 100
    new-instance v0, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    invoke-direct {v0, v1}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .line 101
    new-instance v0, Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    iget-object v2, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    const-string v3, "settings_cover_live_card"

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCard:Lcom/google/glass/settings/ui/SettingsCoverLiveCard;

    .line 103
    invoke-virtual {v5}, Lcom/google/glass/settings/ui/SettingsCoverLiveCard;->getSurfaceHolderCallback()Landroid/view/SurfaceHolder$Callback;

    move-result-object v5

    new-instance v6, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v6, v1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v6, v9}, Lcom/google/glass/util/SettingsHelper;->createSettingsIntent(I)Landroid/content/Intent;

    move-result-object v6

    .line 103
    invoke-static {v1, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ILandroid/view/SurfaceHolder$Callback;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .line 105
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-virtual {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->getLiveCard()Lcom/google/android/glass/timeline/LiveCard;

    move-result-object v0

    const-string v2, "pinned: settings_cover_live_card"

    invoke-virtual {v0, v2}, Lcom/google/android/glass/timeline/LiveCard;->setPinned(Ljava/lang/String;)Lcom/google/android/glass/timeline/LiveCard;

    .line 106
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 107
    .local v7, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsService;->getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v8

    .line 108
    .local v8, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->broadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v0, v7, v8}, Lcom/google/glass/util/SafeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 114
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "show"

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 115
    invoke-virtual {v0, p0, v2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/google/glass/settings/ui/SettingsService;->broadcastReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 142
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/SettingsService;->getRegistrar()Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 141
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 145
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 148
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/glass/settings/ui/SettingsService;->liveCardToView:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->setVisibility(I)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
