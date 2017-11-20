.class public abstract Lcom/google/glass/voice/GlassVoiceActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "GlassVoiceActivity.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceListener;


# static fields
.field public static final TEST_SERVICE_EXTRAS_KEY:Ljava/lang/String; = "serviceExtras"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final VOICE_MENU_TIPS_CONDTION:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;


# instance fields
.field private gradientView:Landroid/widget/ImageView;

.field private guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

.field private guardPhraseView:Landroid/widget/TextView;

.field private isRunning:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;

.field voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/voice/GlassVoiceActivity$1;

    invoke-direct {v0}, Lcom/google/glass/voice/GlassVoiceActivity$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/GlassVoiceActivity;->VOICE_MENU_TIPS_CONDTION:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/GlassVoiceActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/GlassVoiceActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method


# virtual methods
.method public closeVoiceMenu()V
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    if-eqz v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "dismissedByUser":Z
    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    invoke-interface {v1, v0}, Lcom/google/glass/voice/menu/IVoiceMenuDialog;->dismiss(Z)V

    .line 303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    .line 305
    .end local v0    # "dismissedByUser":Z
    :cond_0
    return-void
.end method

.method public getLastVoiceConfigSet()Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 164
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    return-object v0
.end method

.method protected getVoiceServiceExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "serviceExtras"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 100
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "serviceExtras"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    return v0
.end method

.method public isVoiceMenuShowing()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    invoke-interface {v0}, Lcom/google/glass/voice/menu/IVoiceMenuDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "gradient"    # Landroid/widget/ImageView;
    .param p2, "guardPhrase"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 184
    iput-object p1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->gradientView:Landroid/widget/ImageView;

    .line 185
    iput-object p2, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardPhraseView:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Ignoring listenForGuardPhrase because the voice menu is showing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Listening for guard phrase."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 194
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$TipsType;->SAY_OK_GLASS:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    sget-object v1, Lcom/google/glass/voice/GlassVoiceActivity;->VOICE_MENU_TIPS_CONDTION:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/GlassVoiceActivity;->showGlassTipsRotateOnCondition(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_2

    .line 199
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateIn()V

    goto :goto_0
.end method

.method public newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->RVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/google/glass/voice/VoiceInputHelper;

    new-instance v1, Lcom/google/glass/voice/GlassVoiceActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/google/glass/voice/GlassVoiceActivity$2;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/VoiceListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->getVoiceServiceExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 90
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    .line 134
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 136
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->closeVoiceMenu()V

    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper;->unregisterGrammarLoaders()V

    .line 140
    return-void
.end method

.method public onPrepareVoiceMenu(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p1, "voiceMenu"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 317
    return-void
.end method

.method public onResampledAudioData([BII)Z
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method protected onResumeInternal()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    .line 109
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceInputHelper;->registerGrammarLoaders()V

    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->shouldProvideAudioData()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setWantAudioData(Z)V

    .line 114
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->isVoiceMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unrecognized voice command: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .param p1, "newConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .param p2, "expected"    # Z

    .prologue
    .line 258
    return-void
.end method

.method public onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 0
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 325
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onWindowFocusChanged [hasFocus=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    if-nez p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 244
    iget-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->gradientView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardPhraseView:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/GlassVoiceActivity;->stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 254
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onWindowFocusChanged(Z)V

    .line 255
    return-void

    .line 248
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->isRunning:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->onWindowFocusChangedRecoverConfig:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method public openOptionsMenu()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 330
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V

    .line 331
    return-void
.end method

.method public openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;
    .locals 2
    .param p1, "menuBuilder"    # Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    .param p2, "commandCreationUpTimeMillis"    # J

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->hideTips()V

    .line 282
    invoke-interface {p1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 284
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->closeVoiceMenu()V

    .line 290
    invoke-interface {p1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->createVoiceMenuDialog()Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    .line 291
    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceMenuDialog:Lcom/google/glass/voice/menu/IVoiceMenuDialog;

    invoke-interface {v1, p2, p3}, Lcom/google/glass/voice/menu/IVoiceMenuDialog;->show(J)V

    .line 292
    return-object v0
.end method

.method public overrideVoiceInputHelper(Lcom/google/glass/voice/VoiceInputHelper;)Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1
    .param p1, "override"    # Lcom/google/glass/voice/VoiceInputHelper;

    .prologue
    .line 67
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 68
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 69
    .local v0, "temp":Lcom/google/glass/voice/VoiceInputHelper;
    iput-object p1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 70
    return-object v0
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 159
    :cond_0
    return-void
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public stopListeningForGuardPhrase(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "gradient"    # Landroid/widget/ImageView;
    .param p2, "guardPhrase"    # Landroid/widget/TextView;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Stopping listening for guard phrase."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/GlassVoiceActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 215
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->markTips()V

    .line 217
    invoke-virtual {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->hideTips()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->gradientView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardPhraseView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 219
    iput-object p1, p0, Lcom/google/glass/voice/GlassVoiceActivity;->gradientView:Landroid/widget/ImageView;

    .line 220
    iput-object p2, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardPhraseView:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    if-nez v0, :cond_2

    .line 222
    new-instance v0, Lcom/google/glass/voice/GuardHintAnimator;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/glass/voice/GuardHintAnimator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/GlassVoiceActivity;->guardHintAnimator:Lcom/google/glass/voice/GuardHintAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/GuardHintAnimator;->animateOut()V

    goto :goto_0
.end method
