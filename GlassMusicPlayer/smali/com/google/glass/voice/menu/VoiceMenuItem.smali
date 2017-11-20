.class public Lcom/google/glass/voice/menu/VoiceMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TRIGGER_SOUNDS_DELAY_MILLIS:I = 0x12c


# instance fields
.field private actionController:Lcom/google/glass/voice/ActionController;

.field private actionResults:Landroid/os/Bundle;

.field private animationDelayMillis:J

.field private bottomSpacer:Z

.field private commandValue:Lcom/google/glass/voice/menu/CommandValue;

.field protected final context:Landroid/content/Context;

.field private contextIconDrawable:Landroid/graphics/drawable/Drawable;

.field private customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private emptySubmenuMessage:I

.field private final handler:Landroid/os/Handler;

.field private intent:Landroid/content/Intent;

.field private onVoiceMenuItemSelectedListener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

.field private overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

.field private final playTriggerSoundsForTouchMenuRunnable:Ljava/lang/Runnable;

.field protected final requirements:Ljava/util/List;

.field private subMenu:Ljava/util/List;

.field private touchMenuLabel:Ljava/lang/String;

.field private voiceMenuIcon:I

.field private voiceMenuLabel:Ljava/lang/String;

.field private voicePendingAfterTrigger:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/VoiceMenuItem$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSoundsForTouchMenuRunnable:Ljava/lang/Runnable;

    .line 63
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->handler:Landroid/os/Handler;

    .line 89
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->subMenu:Ljava/util/List;

    .line 130
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->context:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/VoiceMenuItem;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSounds(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/menu/Requirements;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logUnsatisfiedRequirements(Ljava/util/List;Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v1

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/Requirement;

    .line 225
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/Requirement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    :cond_0
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "t"

    const-string v5, "voice"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "n"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    const-string v7, "ur"

    aput-object v7, v6, v1

    const/4 v1, 0x3

    const-string v7, ","

    .line 230
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 229
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v3, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private playTriggerSounds(Z)V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 390
    iget-boolean v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 394
    :cond_0
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0

    .line 398
    :cond_3
    if-eqz p1, :cond_1

    .line 399
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method


# virtual methods
.method public addRequirement(Lcom/google/glass/voice/menu/Requirement;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_3
    check-cast p1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 119
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 120
    iget-object v2, p1, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public getActionController()Lcom/google/glass/voice/ActionController;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionController:Lcom/google/glass/voice/ActionController;

    return-object v0
.end method

.method public getAnimationDelayMillis()J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->animationDelayMillis:J

    return-wide v0
.end method

.method public getCommandValue()Lcom/google/glass/voice/menu/CommandValue;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->commandValue:Lcom/google/glass/voice/menu/CommandValue;

    return-object v0
.end method

.method public final getCustomTriggerSound()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public getEmptySubmenuMessage()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->emptySubmenuMessage:I

    return v0
.end method

.method public final getError(ZZ)Lcom/google/glass/app/GlassError;
    .locals 2

    .prologue
    .line 180
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/Requirement;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/Requirement;->getError()Lcom/google/glass/app/GlassError;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->onVoiceMenuItemSelectedListener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    return-object v0
.end method

.method public final getOpenEndedInputModes()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionController:Lcom/google/glass/voice/ActionController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionController:Lcom/google/glass/voice/ActionController;

    instance-of v0, v0, Lcom/google/glass/voice/VoiceInputActionController;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionController:Lcom/google/glass/voice/ActionController;

    check-cast v0, Lcom/google/glass/voice/VoiceInputActionController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputActionController;->getInputModes()Ljava/util/List;

    move-result-object v0

    .line 344
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverflowMenuCallback()Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    return-object v0
.end method

.method public getResults()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionResults:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSubMenu()Ljava/util/List;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->subMenu:Ljava/util/List;

    return-object v0
.end method

.method public final getTouchIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->contextIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getTouchMenuLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->touchMenuLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnsatisfiedRequirements(ZZ)Ljava/util/List;
    .locals 4

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/Requirement;

    .line 171
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/menu/Requirement;->isSatisfied(ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    return-object v1
.end method

.method public getVoiceMenuIcon()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuIcon:I

    return v0
.end method

.method public final getVoiceMenuLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    return-object v0
.end method

.method public hasBottomSpacer()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->bottomSpacer:Z

    return v0
.end method

.method public final hasRequirementsForTest()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->requirements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->subMenu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isVoicePendingAfterTrigger()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    return v0
.end method

.method public playTriggerSoundsForVoice()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSounds(Z)V

    .line 359
    return-void
.end method

.method public setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionController:Lcom/google/glass/voice/ActionController;

    .line 205
    return-object p0
.end method

.method public setAnimationDelayMillis(J)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->animationDelayMillis:J

    .line 349
    return-object p0
.end method

.method public setBottomSpacer()Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->bottomSpacer:Z

    .line 306
    return-object p0
.end method

.method public final setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->commandValue:Lcom/google/glass/voice/menu/CommandValue;

    .line 250
    return-object p0
.end method

.method public final setCustomTriggerSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->customTriggerSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 156
    return-object p0
.end method

.method public setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 300
    iput p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->emptySubmenuMessage:I

    .line 301
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->intent:Landroid/content/Intent;

    .line 332
    return-void
.end method

.method public setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->onVoiceMenuItemSelectedListener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    .line 416
    return-object p0
.end method

.method public setOverflowMenuCallback(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->overflowMenuCallback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    .line 323
    return-void
.end method

.method public setResults(Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->actionResults:Landroid/os/Bundle;

    .line 410
    return-object p0
.end method

.method public setSubMenu(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->subMenu:Ljava/util/List;

    .line 315
    return-void
.end method

.method public final setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->contextIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    return-object p0
.end method

.method public final setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->touchMenuLabel:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public setVoiceMenuIcon(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuIcon:I

    .line 289
    return-void
.end method

.method public final setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voiceMenuLabel:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public final setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->voicePendingAfterTrigger:Z

    .line 147
    return-object p0
.end method

.method public showErrors(Landroid/content/Context;Z)Z
    .locals 3

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->isConnected()Z

    move-result v0

    .line 193
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getError(ZZ)Lcom/google/glass/app/GlassError;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassError;->show(Landroid/content/Context;)V

    .line 196
    invoke-direct {p0, v1, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->logUnsatisfiedRequirements(Ljava/util/List;Landroid/content/Context;)V

    .line 197
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V
    .locals 4

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->showErrors(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem;->playTriggerSoundsForTouchMenuRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem$2;-><init>(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
