.class public Lcom/google/glass/voice/menu/TriggerCommandMenuItem;
.super Ljava/lang/Object;
.source "TriggerCommandMenuItem.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;ZJ)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p3, "x3"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p4, "x4"    # Z
    .param p5, "x5"    # J

    .prologue
    .line 44
    invoke-static/range {p0 .. p6}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->getStartNativeAppRunnable(Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;ZJ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/glass/app/VoiceTrigger;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->hasSpeechInput(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p1, "x1"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->getVoiceInputIntent(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static applySpecialCases(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "nativeAppItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 103
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->TAKE_A_PICTURE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->RECORD_A_VIDEO:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isSearchTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->configureForOpenEndedInput(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    goto :goto_0
.end method

.method static configureForOpenEndedInput(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "nativeAppItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 114
    invoke-virtual {p2, v6}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 115
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isSearchTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    new-instance v2, Lcom/google/glass/voice/actions/SearchResponseController;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/actions/SearchResponseController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v2

    sget-object v3, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    .line 119
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->voice_navigation_speak_now:I

    .line 120
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v6}, Lcom/google/glass/voice/InputMode;->setNavigationResponseExpected(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->open_ended_decorator_get_directions:I

    new-array v4, v6, [Ljava/lang/Object;

    sget v5, Lcom/google/glass/common/R$string;->voice_label_get_directions:I

    .line 123
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 122
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v6}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/GetDirectionsResultSanitizer;

    invoke-direct {v3}, Lcom/google/glass/voice/GetDirectionsResultSanitizer;-><init>()V

    .line 125
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setResultSanitizer(Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/menu/RichEventsReceiver;

    invoke-direct {v3, p1}, Lcom/google/glass/voice/menu/RichEventsReceiver;-><init>(Lcom/google/android/glass/app/VoiceTrigger;)V

    .line 126
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 127
    .local v1, "mode":Lcom/google/glass/voice/InputMode;
    new-array v2, v6, [Lcom/google/glass/voice/InputMode;

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/google/glass/voice/VoiceInputActionController;->createSimpleController([Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    goto :goto_0

    .line 129
    .end local v1    # "mode":Lcom/google/glass/voice/InputMode;
    :cond_1
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationController;

    .line 130
    invoke-static {p2, p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->getVoiceInputIntent(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;

    move-result-object v2

    .line 131
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V

    .line 132
    .local v0, "controller":Lcom/google/glass/voice/VoiceAnnotationController;
    invoke-virtual {p2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    goto :goto_0
.end method

.method static getNextVoiceConfig(Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .param p0, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p1, "spoken"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GOOGLE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {p0}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-static {p0}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->NAVIGATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->hasSpeechInput(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_2
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method static getRequirements(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)[Lcom/google/glass/voice/menu/Requirement;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "spoken"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 222
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    .local v0, "requirements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/voice/menu/Requirement;>;"
    sget-object v1, Lcom/google/android/glass/app/VoiceTrigger$Constraint;->NETWORK:Lcom/google/android/glass/app/VoiceTrigger$Constraint;

    invoke-virtual {p1, v1}, Lcom/google/android/glass/app/VoiceTrigger;->hasConstraint(Lcom/google/android/glass/app/VoiceTrigger$Constraint;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->hasSpeechInput(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    sget-object v1, Lcom/google/android/glass/app/VoiceTrigger$Constraint;->MICROPHONE:Lcom/google/android/glass/app/VoiceTrigger$Constraint;

    invoke-virtual {p1, v1}, Lcom/google/android/glass/app/VoiceTrigger;->hasConstraint(Lcom/google/android/glass/app/VoiceTrigger$Constraint;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isNavigationAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/glass/voice/menu/Requirement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/voice/menu/Requirement;

    return-object v1
.end method

.method private static getStartNativeAppRunnable(Ljava/lang/String;Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;ZJ)Ljava/lang/Runnable;
    .locals 8
    .param p0, "commandLiteral"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p3, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p4, "spoken"    # Z
    .param p5, "triggerTimeMillis"    # J

    .prologue
    .line 169
    new-instance v0, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;

    move-object v1, p3

    move v2, p4

    move-object v3, p2

    move-wide v4, p5

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$2;-><init>(Lcom/google/android/glass/app/VoiceTrigger;ZLcom/google/glass/voice/menu/VoiceMenuItem;JLandroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getVoiceInputIntent(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)Landroid/content/Intent;
    .locals 4
    .param p0, "menuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const-string v2, "com.google.glass.ACTION_VOICE_NAVIGATION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :goto_0
    const-string v2, "trigger"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p1}, Lcom/google/android/glass/app/VoiceTrigger;->getInput()Lcom/google/android/glass/app/VoiceTrigger$Input;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/app/VoiceTrigger$Input;->getPrompt()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "prompt":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_0
    const-string v2, "header_msg"

    .line 216
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    return-object v0

    .line 205
    .end local v1    # "prompt":Ljava/lang/String;
    :cond_1
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static hasSpeechInput(Lcom/google/android/glass/app/VoiceTrigger;Z)Z
    .locals 1
    .param p0, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p1, "spoken"    # Z

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/glass/app/VoiceTrigger;->hasInput()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/glass/app/VoiceTrigger;->getInput()Lcom/google/android/glass/app/VoiceTrigger$Input;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTrigger$Input;->isNoTouch()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavigationTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z
    .locals 2
    .param p0, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 159
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GET_DIRECTIONS:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {p0}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSearchTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Z
    .locals 2
    .param p0, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/glass/app/VoiceTriggers$Command;->GOOGLE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    invoke-virtual {p0}, Lcom/google/android/glass/app/VoiceTrigger;->getCommand()Lcom/google/android/glass/app/VoiceTriggers$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/app/VoiceTriggers$Command;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newDisambiguationItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "spoken"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newTriggerItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;ZZ)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static newTopLevelItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "spoken"    # Z

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newTriggerItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;ZZ)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private static newTriggerItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;ZZ)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trigger"    # Lcom/google/android/glass/app/VoiceTrigger;
    .param p2, "spoken"    # Z
    .param p3, "isTopLevel"    # Z

    .prologue
    .line 59
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 60
    invoke-static {p0, p1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->getRequirements(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)[Lcom/google/glass/voice/menu/Requirement;

    move-result-object v2

    .line 59
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 62
    .local v1, "nativeAppItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    new-instance v2, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem$1;-><init>(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;Z)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 84
    if-eqz p3, :cond_1

    .line 85
    invoke-static {p0, v1, p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindNativeCommandAppItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/android/glass/app/VoiceTrigger;)V

    .line 92
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->applySpecialCases(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 93
    invoke-static {p1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->hasSpeechInput(Lcom/google/android/glass/app/VoiceTrigger;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {p0, p1, v1}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->configureForOpenEndedInput(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 96
    :cond_0
    return-object v1

    .line 87
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/glass/app/VoiceTrigger;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lcom/google/android/glass/app/VoiceTrigger;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 88
    invoke-static {p0, v1, v0, v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindDisambiguationItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
