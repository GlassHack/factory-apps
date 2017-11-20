.class public Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeveloperSettingsReceiver.java"


# static fields
.field public static final ACTION_CHANGE_SETTING:Ljava/lang/String; = "com.google.android.glass.settings.CHANGE_DEVELOPER_SETTING"

.field public static final EXTRA_SETTING:Ljava/lang/String; = "setting"

.field public static final EXTRA_VALUE:Ljava/lang/String; = "value"

.field public static final SETTING_ANIMATION_TIME_SCALE:Ljava/lang/String; = "animation_time_scale"

.field public static final SETTING_KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field public static final SETTING_LAYOUT_OVERLAY:Ljava/lang/String; = "layout_overlay"

.field public static final SETTING_SHOW_GPU_OVERDRAW:Ljava/lang/String; = "show_gpu_overdraw"

.field public static final SETTING_SHOW_LAYOUT_BOUNDS:Ljava/lang/String; = "show_layout_bounds"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

.field private developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private logBooleanDeveloperSettingChangeEvent(Lcom/google/glass/userevent/UserEventAction;Z)V
    .locals 7
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "value"    # Z

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    iget-object v2, p1, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v2

    const-string v3, "s"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "m"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "adb"

    aput-object v6, v4, v5

    .line 148
    invoke-static {v3, v0, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 154
    return-void

    .line 147
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private setAnimationTimeScale(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 106
    const-string v3, "value"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 107
    .local v1, "desiredScale":F
    iget-object v3, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-virtual {v3, v1}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;->findScale(F)Lcom/google/glass/settings/ui/developer/AnimationScale;

    move-result-object v0

    .line 108
    .local v0, "closestScale":Lcom/google/glass/settings/ui/developer/AnimationScale;
    iget v2, v0, Lcom/google/glass/settings/ui/developer/AnimationScale;->value:F

    .line 109
    .local v2, "scaleToApply":F
    iget-object v3, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v3, v2}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setAllAnimationScales(F)V

    .line 111
    iget-object v3, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    sget-object v5, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_ANIMATION_TIME_SCALE_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v5, v5, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 112
    invoke-virtual {v4, v5}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    const-string v5, "s"

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    .line 115
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "m"

    aput-object v8, v7, v9

    const-string v8, "adb"

    aput-object v8, v7, v10

    .line 113
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v4

    .line 111
    invoke-virtual {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 118
    return-void
.end method

.method private setDebugLayoutEnabled(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, "value":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setDebugLayoutEnabled(Z)V

    .line 92
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_LAYOUT_BOUNDS_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->logBooleanDeveloperSettingChangeEvent(Lcom/google/glass/userevent/UserEventAction;Z)V

    .line 94
    return-void
.end method

.method private setLayoutOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "overlayName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/glass/settings/ui/developer/LayoutOverlayService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "show"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    iget-object v2, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-static {}, Lcom/google/glass/userevent/UserEventHelper;->createUserEventProto()Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_LAYOUT_OVERLAY_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    iget-object v4, v4, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventType(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v3

    const-string v4, "s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "m"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "adb"

    aput-object v7, v5, v6

    .line 131
    invoke-static {v4, v0, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->setEventData(Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 136
    return-void
.end method

.method private setScreenOnWhileCharging(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "value":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setScreenOnWhileCharging(Z)V

    .line 85
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_KEEP_SCREEN_ON_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->logBooleanDeveloperSettingChangeEvent(Lcom/google/glass/userevent/UserEventAction;Z)V

    .line 87
    return-void
.end method

.method private setShowsGpuOverdraw(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 98
    .local v0, "value":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/DeveloperSettingsHelper;->setShowsGpuOverdraw(Z)V

    .line 99
    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVELOPER_SETTING_SHOW_GPU_OVERDRAW_CHANGED:Lcom/google/glass/userevent/UserEventAction;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->logBooleanDeveloperSettingChangeEvent(Lcom/google/glass/userevent/UserEventAction;Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->DSC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.glass.settings.CHANGE_DEVELOPER_SETTING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v1, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->animationScaleHelper:Lcom/google/glass/settings/ui/developer/AnimationScaleHelper;

    .line 63
    invoke-static {}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->getInstance()Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/settings/DeveloperSettingsHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/settings/DeveloperSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->developerSettingsHelper:Lcom/google/glass/settings/DeveloperSettingsHelper;

    .line 64
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 66
    const-string v1, "setting"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "setting":Ljava/lang/String;
    const-string v1, "keep_screen_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->setScreenOnWhileCharging(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :cond_2
    const-string v1, "show_layout_bounds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->setDebugLayoutEnabled(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v1, "show_gpu_overdraw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->setShowsGpuOverdraw(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_4
    const-string v1, "animation_time_scale"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->setAnimationTimeScale(Landroid/content/Intent;)V

    goto :goto_0

    .line 75
    :cond_5
    const-string v1, "layout_overlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->setLayoutOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    :cond_6
    sget-object v1, Lcom/google/glass/settings/ui/developer/DeveloperSettingsReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unrecognized setting name \'%s\'."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
