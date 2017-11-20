.class public Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "BatteryPowerStateReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

.field private previousLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/companion/EnvelopeSender;)V
    .locals 3
    .param p1, "envelopeSender"    # Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->previousLevel:I

    .line 30
    iput-object p1, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    .line 31
    return-void
.end method

.method private checkAndNotifyBatteryState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatusIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x14

    .line 46
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v0

    .line 47
    .local v0, "batteryHelper":Lcom/google/glass/util/BatteryHelper;
    invoke-virtual {v0, p2}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v1

    .line 49
    .local v1, "currentLevel":I
    sget-object v2, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Battery level=%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    if-le v1, v6, :cond_0

    iget v2, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->previousLevel:I

    if-le v2, v6, :cond_1

    :cond_0
    if-gt v1, v6, :cond_2

    iget v2, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->previousLevel:I

    if-le v2, v6, :cond_2

    .line 56
    :cond_1
    sget-object v2, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Battery threshold crossed [current=%d, previous=%d], notifying Companion."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->previousLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 56
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0, v1}, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->notifyBatteryLevel(I)V

    .line 61
    :cond_2
    iput v1, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->previousLevel:I

    .line 62
    return-void
.end method

.method private notifyBatteryLevel(I)V
    .locals 3
    .param p1, "chargePercentage"    # I

    .prologue
    .line 65
    new-instance v1, Lcom/google/glass/companion/Proto$GlassInfoResponse;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;-><init>()V

    .line 66
    .local v1, "glassInfoResponse":Lcom/google/glass/companion/Proto$GlassInfoResponse;
    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$GlassInfoResponse;->setBatteryLevel(I)Lcom/google/glass/companion/Proto$GlassInfoResponse;

    .line 68
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 69
    .local v0, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Envelope;->setGlassInfoResponseG2C(Lcom/google/glass/companion/Proto$GlassInfoResponse;)Lcom/google/glass/companion/Proto$Envelope;

    .line 70
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->envelopeSender:Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    .line 71
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/BatteryPowerStateReceiver;->checkAndNotifyBatteryState(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    :cond_0
    return-void
.end method
