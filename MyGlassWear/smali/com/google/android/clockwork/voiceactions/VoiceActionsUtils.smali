.class public Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;
.super Ljava/lang/Object;
.source "VoiceActionsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceActionsUtils"

.field private static final VOICE_ACTIONS_SERVICE_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.wearable.app"

    const-string v2, "com.google.android.clockwork.home.voiceactions.VoiceActionsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->VOICE_ACTIONS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hideActionFromCompanion(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.BUG_REPORT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.settings.SETTINGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initializeVoiceActionsService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.action.ACTION_STARTUP_INITIALIZATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->VOICE_ACTIONS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->startVoiceActionServiceWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static preSeedVoiceActions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.clockwork.action.ACTION_PRESEED_VOICE_ACTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->VOICE_ACTIONS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->startVoiceActionServiceWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public static setDisambiguationInfoForAction(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    const-string v3, "VoiceActionsUtils"

    const-string v4, "activity list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "actionName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->hideActionFromCompanion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    instance-of v3, p1, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 46
    .local v1, "activityArrayList":Ljava/util/ArrayList;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.clockwork.action.ACTION_SET_DISAMBIGUATION_INFO_FOR_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->VOICE_ACTIONS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "activity_list"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "action_title"

    const-string v5, "action_title"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "original_intent"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 55
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/google/android/clockwork/voiceactions/VoiceActionsUtils;->startVoiceActionServiceWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    .end local v1    # "activityArrayList":Ljava/util/ArrayList;
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "activityArrayList":Ljava/util/ArrayList;
    goto :goto_1
.end method

.method private static startVoiceActionServiceWithIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 73
    const-string v1, "pending_intent"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, "VoiceActionsUtils"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "VoiceActionsUtils"

    const-string v2, "couldn\'t start VoiceActionsService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VoiceActionsUtils"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "VoiceActionsUtils"

    const-string v2, "error starting VoiceActionsService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
