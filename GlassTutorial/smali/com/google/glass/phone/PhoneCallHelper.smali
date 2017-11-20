.class public Lcom/google/glass/phone/PhoneCallHelper;
.super Ljava/lang/Object;
.source "PhoneCallHelper.java"


# static fields
.field public static final ACTION_PHONE_CALL_STATE_CHANGED:Ljava/lang/String; = "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "call_state"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private attemptDial(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "secondaryMessage"    # I

    .prologue
    const/4 v1, 0x1

    .line 94
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v0, Lcom/google/glass/app/GlassError;

    invoke-direct {v0}, Lcom/google/glass/app/GlassError;-><init>()V

    .line 96
    .local v0, "error":Lcom/google/glass/app/GlassError;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    sget v1, Lcom/google/glass/common/R$string;->error_no_phone_number:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 98
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 99
    invoke-virtual {v0, p3}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    .line 113
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 115
    .end local v0    # "error":Lcom/google/glass/app/GlassError;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 101
    .restart local v0    # "error":Lcom/google/glass/app/GlassError;
    :cond_2
    invoke-static {p1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 103
    sget v1, Lcom/google/glass/common/R$string;->error_bluetooth_headset_not_active:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$string;->error_tap_connection_settings:I

    .line 104
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget-object v2, Lcom/google/glass/app/GlassError$OnConfirmAction;->SHOW_BLUETOOTH_STATUS_CARD:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_cloud_sad_150:I

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->setIconId(I)Lcom/google/glass/app/GlassError;

    goto :goto_0

    .line 107
    :cond_3
    new-instance v2, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v2, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    sget v2, Lcom/google/glass/common/R$string;->error_phone_in_use:I

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/app/GlassError;->setAutoHide(Z)Lcom/google/glass/app/GlassError;

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {p1, p2}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastDial(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public attemptDial(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->error_edit_focus_contacts:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public attemptDial(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/phone/PhoneCallHelper;->attemptDial(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 5

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public isInCall(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p1, :cond_0

    .line 70
    :goto_0
    return v0

    :cond_0
    const-string v1, "call_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setInCall(Z)V
    .locals 6
    .param p1, "isInCall"    # Z

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "call_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    sget-object v1, Lcom/google/glass/phone/PhoneCallHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Broadcasting \"is in phone call\": %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method
