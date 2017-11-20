.class public final Lcom/google/glass/phone/HeadsetStateReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "HeadsetStateReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/HeadsetStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    sget-object v2, Lcom/google/glass/phone/HeadsetStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Intent received: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const-string v2, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-static {p2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Intent;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 23
    sget-object v2, Lcom/google/glass/phone/HeadsetStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Headset connected, starting PhoneCallService."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/google/glass/phone/PhoneApplication;->from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;

    move-result-object v1

    .line 25
    .local v1, "app":Lcom/google/glass/phone/PhoneApplication;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/phone/PhoneCallService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    .end local v1    # "app":Lcom/google/glass/phone/PhoneApplication;
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v2, Lcom/google/glass/phone/HeadsetStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Headset was disconnected."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_1
    sget-object v2, Lcom/google/glass/phone/HeadsetStateReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown action received."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
