.class public final Lcom/google/glass/util/MicrophoneHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_MICROPHONE_STATE_CHANGED:Ljava/lang/String; = "com.google.glass.action.MICROPHONE_STATE_CHANGED"

.field public static final ACTION_TOGGLE_MICROPHONE_MUTE:Ljava/lang/String; = "com.google.glass.action.TOGGLE_MICROPHONE_MUTE"

.field public static final EXTRA_MICROPHONE_MUTED:Ljava/lang/String; = "is_mute"

.field public static final MENU_ITEM_MUTE:Ljava/lang/String; = "mute_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method private static broadcastStateChanged(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "is_mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static isMuted(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/android/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public static mute(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/util/MicrophoneHelper;->setMute(Landroid/content/Context;Z)V

    .line 31
    return-void
.end method

.method private static setMute(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/google/glass/android/media/AudioManagerProvider;->getInstance()Lcom/google/glass/android/media/AudioManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/android/media/AudioManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/media/AudioManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/android/media/AudioManager;->setMicrophoneMute(Z)V

    .line 71
    invoke-static {p0, p1}, Lcom/google/glass/util/MicrophoneHelper;->broadcastStateChanged(Landroid/content/Context;Z)V

    .line 72
    return-void
.end method

.method public static toggleMute(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->unmute(Landroid/content/Context;)V

    .line 49
    :goto_0
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->mute(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unmute(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/util/MicrophoneHelper;->setMute(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method

.method public static updateOptionMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget v0, Lcom/google/glass/common/R$string;->phone_call_unmute:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 60
    sget v0, Lcom/google/glass/common/R$drawable;->ic_microphone_off_50:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->MUTE_MY_MICROPHONE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 63
    sget v0, Lcom/google/glass/common/R$drawable;->ic_microphone_on_50:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method
