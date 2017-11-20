.class public Lcom/google/glass/voice/MirrorInvocationController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final intent:Landroid/content/Intent;

.field private final isInputExpected:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private recognitionResult:Ljava/lang/String;

.field private timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 49
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 105
    iput-object p1, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/google/glass/voice/MirrorInvocationController;->intent:Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCommandType()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/MirrorInvocationController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/voice/MirrorInvocationController;->onFinalResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/MirrorInvocationController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/MirrorInvocationController;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/voice/MirrorInvocationController;->onInvocationConfirmed()V

    return-void
.end method

.method private getCancelTip()Landroid/view/View;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    sget v1, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getInputType(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I
    .locals 5

    .prologue
    .line 237
    iget-object v0, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    iget-object v1, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->acceptCommand:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 239
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getType()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 240
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity$Command;->getInputType()I

    move-result v0

    .line 245
    :goto_1
    return v0

    .line 241
    :cond_0
    invoke-static {p0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getDefaultInputType()I

    move-result v0

    goto :goto_1

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getInvocationIntent(IZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 259
    .line 260
    invoke-static {p0, p2}, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v2

    .line 262
    new-instance v3, Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string v0, "com.google.glass.ACTION_WITH_INPUT"

    :goto_0
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    const-string v4, "trigger_method"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v0, "trigger_time"

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 267
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 269
    const-string v0, "share_target"

    .line 270
    invoke-static {p2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    .line 269
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 271
    const-string v0, "command_type"

    invoke-virtual {v3, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    if-eqz v2, :cond_0

    .line 273
    const-string v0, "should_finish_turn_screen_off"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    :cond_0
    return-object v3

    .line 262
    :cond_1
    const-string v0, "com.google.glass.ACTION_NO_INPUT"

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public static isInputExpected(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 249
    invoke-static {p0, p1}, Lcom/google/glass/voice/MirrorInvocationController;->getInputType(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 250
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFinalResult()V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->getSanitizedRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->confirmInvocation()V

    .line 151
    return-void
.end method

.method private onInvocationConfirmed()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->notifyReadyToUpdateToFinalItem()V

    .line 191
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method


# virtual methods
.method public confirmInvocation()V
    .locals 6

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCommandType()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v0

    .line 155
    iget-boolean v1, p0, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected:Z

    if-nez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getConfirmationMessageId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No recognition result! Canceling invocation."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 187
    :goto_0
    return-void

    .line 166
    :cond_1
    new-instance v0, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;

    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    .line 167
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCommandType()I

    move-result v4

    iget-object v5, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/voice/MirrorInvocationController$InvocationTimelineCreatorJob;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->start()V

    .line 171
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v2, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    .line 172
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    invoke-direct {v1, v2, v0}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCommandType()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bind(Lcom/google/glass/widget/MessageDialog$Builder;I)V

    .line 174
    new-instance v0, Lcom/google/glass/voice/MirrorInvocationController$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/MirrorInvocationController$3;-><init>(Lcom/google/glass/voice/MirrorInvocationController;)V

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0
.end method

.method public getCommandType()I
    .locals 4

    .prologue
    .line 227
    const-string v0, "Command type required"

    iget-object v1, p0, Lcom/google/glass/voice/MirrorInvocationController;->intent:Landroid/content/Intent;

    const-string v2, "command_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInputModes()Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCommandType()I

    move-result v1

    invoke-static {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getUiByCommandType(I)Lcom/google/glass/voice/menu/TriggerCommandUi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->getDisambiguationLabelId()I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/voice/InputMode;

    .line 127
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/MirrorInvocationController;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->mirror_command_input_prompt_text:I

    .line 128
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v5}, Lcom/google/glass/voice/InputMode;->setShowProgressOnRecognitionResult(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected:Z

    .line 130
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/InputMode;->setShowGracePeriodAfterRecognitionResults(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/InputMode;->setFinalSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    new-instance v2, Lcom/google/glass/voice/LongInputEventReceiver;

    invoke-direct {v2}, Lcom/google/glass/voice/LongInputEventReceiver;-><init>()V

    .line 132
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    new-instance v2, Lcom/google/glass/voice/MirrorInvocationController$2;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/MirrorInvocationController$2;-><init>(Lcom/google/glass/voice/MirrorInvocationController;)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    const/4 v2, 0x3

    .line 142
    invoke-virtual {v0, v2}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v0

    aput-object v0, v1, v5

    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShareTarget()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->intent:Landroid/content/Intent;

    const-string v1, "share_target"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    return-object v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/glass/voice/MirrorInvocationController;->getCancelTip()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    .line 211
    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onBack()Z

    move-result v0

    return v0
.end method

.method public onDismissAction()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->cancelIfNotFinished()V

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->recognitionResult:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public onPrepareAction()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    new-instance v1, Lcom/google/glass/voice/MirrorInvocationController$1;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/MirrorInvocationController$1;-><init>(Lcom/google/glass/voice/MirrorInvocationController;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/OpenEndedInputController;->setInputModeChangeListener(Lcom/google/glass/voice/OpenEndedInputController$InputModeChangeListener;)Lcom/google/glass/voice/OpenEndedInputController;

    .line 120
    :cond_0
    return-void
.end method

.method public shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/MirrorInvocationController;->timelineItemCreatorJob:Lcom/google/glass/timeline/TimelineItemCreatorJob;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreatorJob;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
