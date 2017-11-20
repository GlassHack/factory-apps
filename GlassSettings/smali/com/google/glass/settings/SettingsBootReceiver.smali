.class public final Lcom/google/glass/settings/SettingsBootReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "SettingsBootReceiver.java"


# static fields
.field private static final SERVICES_TO_START:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/SettingsBootReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/glass/settings/timezone/NewTimeZoneService;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/glass/settings/battery/BatteryStateService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/SettingsBootReceiver;->SERVICES_TO_START:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 29
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v3, Lcom/google/glass/settings/SettingsBootReceiver;->SERVICES_TO_START:[Ljava/lang/Class;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 31
    .local v0, "service":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    sget-object v5, Lcom/google/glass/settings/SettingsBootReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Starting %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, p1, v6}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "service":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    :cond_0
    invoke-static {p1}, Lcom/google/glass/settings/BackupRestoreScheduler;->scheduleForNextRestore(Landroid/content/Context;)V

    .line 39
    :cond_1
    return-void
.end method
