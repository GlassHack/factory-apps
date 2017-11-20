.class public Lcom/google/glass/app/GlassError;
.super Ljava/lang/Object;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/app/GlassError$OnConfirmAction;
    }
.end annotation


# static fields
.field public static lastErrorMessageShown:Ljava/lang/CharSequence;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private autoHide:Z

.field private finishWhenDone:Z

.field private iconId:I

.field private onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

.field private onConfirmRunnable:Ljava/lang/Runnable;

.field private onDismissRunnable:Ljava/lang/Runnable;

.field private preemptVoiceMenu:Z

.field private primaryMessageId:I

.field private primaryMessageText:Ljava/lang/CharSequence;

.field private secondaryMessageId:I

.field private secondaryMessageText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/app/GlassError;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/app/GlassError;->preemptVoiceMenu:Z

    .line 55
    sget v0, Lcom/google/glass/common/R$drawable;->ic_warning_white_160px:I

    iput v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/app/GlassError;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/app/GlassError;)Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/app/GlassError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/glass/app/GlassError;->iconId:I

    return v0
.end method

.method public getOnConfirmAction()Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method

.method public getOnConfirmRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getOnDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->onDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecondaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 109
    iget v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageText:Ljava/lang/CharSequence;

    .line 109
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public isAutoHide()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    return v0
.end method

.method public isPreemptVoiceMenu()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->preemptVoiceMenu:Z

    return v0
.end method

.method runOnConfirmAction(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    sget-object v0, Lcom/google/glass/app/GlassError$2;->$SwitchMap$com$google$glass$app$GlassError$OnConfirmAction:[I

    iget-object v1, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassError$OnConfirmAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.voice.action.CLOSE_MENU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 268
    return-void

    .line 256
    :pswitch_0
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsHelper;->goToSettings()V

    goto :goto_0

    .line 259
    :pswitch_1
    new-instance v0, Lcom/google/glass/util/SettingsHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SettingsHelper;->goToSettings(I)V

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_SHOW_CONNECTIVITY_STATUS_CARD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoHide(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "autoHide"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->autoHide:Z

    .line 135
    return-object p0
.end method

.method public setFinishWhenDone(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "finishWhenDone"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    .line 119
    return-object p0
.end method

.method public setIconId(I)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/google/glass/app/GlassError;->iconId:I

    .line 162
    return-object p0
.end method

.method public setOnConfirmAction(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "onConfirmAction"    # Lcom/google/glass/app/GlassError$OnConfirmAction;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmAction:Lcom/google/glass/app/GlassError$OnConfirmAction;

    .line 150
    return-object p0
.end method

.method public setOnConfirmRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "onConfirmRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onConfirmRunnable:Ljava/lang/Runnable;

    .line 172
    return-object p0
.end method

.method public setOnDismissRunnable(Ljava/lang/Runnable;)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "onDismissRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->onDismissRunnable:Ljava/lang/Runnable;

    .line 185
    return-object p0
.end method

.method public setPreemptVoiceMenu(Z)Lcom/google/glass/app/GlassError;
    .locals 0
    .param p1, "preemptVoiceMenu"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/google/glass/app/GlassError;->preemptVoiceMenu:Z

    .line 286
    return-object p0
.end method

.method public setPrimaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 1
    .param p1, "primaryMessageId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageText:Ljava/lang/CharSequence;

    .line 65
    return-object p0
.end method

.method public setPrimaryMessageText(Ljava/lang/CharSequence;)Lcom/google/glass/app/GlassError;
    .locals 1
    .param p1, "primaryMessageText"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/app/GlassError;->primaryMessageId:I

    .line 74
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->primaryMessageText:Ljava/lang/CharSequence;

    .line 75
    return-object p0
.end method

.method public setSecondaryMessageId(I)Lcom/google/glass/app/GlassError;
    .locals 1
    .param p1, "secondaryMessageId"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageText:Ljava/lang/CharSequence;

    .line 92
    return-object p0
.end method

.method public setSecondaryMessageText(Ljava/lang/CharSequence;)Lcom/google/glass/app/GlassError;
    .locals 1
    .param p1, "secondaryMessageText"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/app/GlassError;->secondaryMessageId:I

    .line 101
    iput-object p1, p0, Lcom/google/glass/app/GlassError;->secondaryMessageText:Ljava/lang/CharSequence;

    .line 102
    return-object p0
.end method

.method public shouldFinishWhenDone()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/glass/app/GlassError;->finishWhenDone:Z

    return v0
.end method

.method public show(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 193
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sound/SoundManager;

    .line 194
    .local v4, "soundManager":Lcom/google/glass/sound/SoundManager;
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getOnDismissRunnable()Ljava/lang/Runnable;

    move-result-object v2

    .line 195
    .local v2, "onDismissRunnable":Ljava/lang/Runnable;
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-direct {v0, p1, v4}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 197
    .local v0, "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    invoke-virtual {v0, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    .line 198
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->isAutoHide()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    .line 199
    invoke-virtual {v5, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/glass/app/GlassError;->getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/app/GlassError;->getIconId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    sget-object v6, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 202
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/glass/app/GlassError$1;

    invoke-direct {v6, p0, v2, p1, v4}, Lcom/google/glass/app/GlassError$1;-><init>(Lcom/google/glass/app/GlassError;Ljava/lang/Runnable;Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 203
    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/app/GlassError;->getSecondaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 241
    .local v3, "secondaryMessage":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {v0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/glass/app/GlassError;->getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 248
    .local v1, "errorMessage":Ljava/lang/CharSequence;
    sget-object v5, Lcom/google/glass/app/GlassError;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Showing error: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    sput-object v1, Lcom/google/glass/app/GlassError;->lastErrorMessageShown:Ljava/lang/CharSequence;

    .line 250
    invoke-static {}, Lcom/google/glass/widget/MessageDialogManager$Provider;->getInstance()Lcom/google/glass/widget/MessageDialogManager$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/widget/MessageDialogManager$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/widget/MessageDialogManager;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/MessageDialogManager;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 251
    return-void
.end method
