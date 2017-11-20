.class public Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "PhoneCallLiveCardMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$4;
    }
.end annotation


# static fields
.field static final MENU_ITEM_ANSWER:I = 0x0

.field static final MENU_ITEM_DECLINE_CALL:I = 0x1

.field static final MENU_ITEM_END_CALL:I = 0x2

.field static final MENU_ITEM_MUTE_MIC:I = 0x3

.field static final MENU_ITEM_VOLUME:I = 0x4


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field currentCall:Lcom/google/glass/phone/PhoneCall;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private finishWhenMenuDismissed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private phoneCallService:Lcom/google/glass/phone/PhoneCallService;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 34
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finishWhenMenuDismissed:Z

    .line 235
    new-instance v0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;-><init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)Lcom/google/glass/phone/PhoneCallService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->phoneCallService:Lcom/google/glass/phone/PhoneCallService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCallService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;
    .param p1, "x1"    # Lcom/google/glass/phone/PhoneCallService;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->phoneCallService:Lcom/google/glass/phone/PhoneCallService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->showMenuWhenReady()V

    return-void
.end method

.method private addAnswerCall(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 157
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->ANSWER_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$drawable;->ic_phone_in_50:I

    .line 158
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 159
    return-void
.end method

.method private addChangeVolume(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x4

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_THE_VOLUME:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$drawable;->ic_volume_full_50:I

    .line 153
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 154
    return-void
.end method

.method private addDeclineCall(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->DECLINE_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$drawable;->ic_phone_hang_50:I

    .line 163
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 164
    return-void
.end method

.method private addEndCall(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 167
    const/4 v0, 0x2

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->END_THIS_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lcom/google/glass/phone/R$drawable;->ic_phone_hang_50:I

    .line 168
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 169
    return-void
.end method

.method private addMuteMic(Landroid/view/Menu;Z)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "isVoiceMenu"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 143
    if-nez p2, :cond_1

    .line 144
    const-string v1, ""

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 145
    .local v0, "add":Landroid/view/MenuItem;
    invoke-static {p0, v0}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 149
    .end local v0    # "add":Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->isMuted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->MUTE_MY_MICROPHONE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private logMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;I)V
    .locals 3
    .param p1, "command"    # Lcom/google/android/glass/app/ContextualMenus$Command;
    .param p2, "featureId"    # I

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p1}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/glass/util/ContextualMenuLogger;->logContexualCommand(Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/CharSequence;Z)V

    .line 220
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logPhoneCallAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PHONE_CALL:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "u"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 224
    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private showMenuWhenReady()V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->isResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->phoneCallService:Lcom/google/glass/phone/PhoneCallService;

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$1;-><init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EXTRA_FROM_LIVECARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 59
    :cond_0
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onCreatePanelMenu"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 110
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    move v0, v1

    .line 111
    .local v0, "isVoiceMenu":Z
    :goto_0
    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->currentCall:Lcom/google/glass/phone/PhoneCall;

    if-eqz v3, :cond_2

    .line 112
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->wasAccepted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addEndCall(Landroid/view/Menu;)V

    .line 114
    invoke-direct {p0, p2, v0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addMuteMic(Landroid/view/Menu;Z)V

    .line 115
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addChangeVolume(Landroid/view/Menu;)V

    .line 131
    :goto_1
    return v1

    .end local v0    # "isVoiceMenu":Z
    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    .line 117
    .restart local v0    # "isVoiceMenu":Z
    :cond_1
    sget-object v2, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$4;->$SwitchMap$com$google$glass$phone$PhoneCall$CallDirection:[I

    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->currentCall:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall;->getCallDirection()Lcom/google/glass/phone/PhoneCall$CallDirection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall$CallDirection;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 119
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addAnswerCall(Landroid/view/Menu;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addDeclineCall(Landroid/view/Menu;)V

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->addEndCall(Landroid/view/Menu;)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Select menu:%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-interface {v1, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown menu item selected: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-interface {v1, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 213
    :goto_0
    return v1

    .line 176
    :pswitch_0
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_THE_VOLUME:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, v1, p1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;I)V

    .line 177
    const-string v1, "2"

    invoke-direct {p0, v1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 178
    iput-boolean v3, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finishWhenMenuDismissed:Z

    .line 180
    new-instance v0, Lcom/google/glass/widget/VolumeControlDialog;

    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/VolumeControlDialog;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 181
    .local v0, "volumeControlDialog":Lcom/google/glass/widget/VolumeControlDialog;
    new-instance v1, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$2;-><init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/VolumeControlDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 187
    invoke-virtual {v0}, Lcom/google/glass/widget/VolumeControlDialog;->show()V

    move v1, v2

    .line 188
    goto :goto_0

    .line 190
    .end local v0    # "volumeControlDialog":Lcom/google/glass/widget/VolumeControlDialog;
    :pswitch_1
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->MUTE_MY_MICROPHONE:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, v1, p1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;I)V

    .line 191
    const-string v1, "3"

    invoke-direct {p0, v1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 193
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finish()V

    move v1, v2

    .line 194
    goto :goto_0

    .line 196
    :pswitch_2
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->ANSWER_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-direct {p0, v1, p1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;I)V

    .line 197
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Call accepted from menu."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastAcceptCall(Landroid/content/Context;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finish()V

    move v1, v2

    .line 201
    goto :goto_0

    .line 204
    :pswitch_3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->DECLINE_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logMenuCommand(Lcom/google/android/glass/app/ContextualMenus$Command;I)V

    .line 206
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logPhoneCallAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Call declined from menu."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {p0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastRejectCall(Landroid/content/Context;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finish()V

    move v1, v2

    .line 210
    goto :goto_0

    .line 204
    :cond_0
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->END_THIS_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 230
    iget-boolean v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finishWhenMenuDismissed:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->finish()V

    .line 233
    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResumeInternal()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->isResumed:Z

    .line 74
    invoke-direct {p0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->showMenuWhenReady()V

    .line 75
    return-void
.end method

.method protected onStartInternal()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStartInternal()V

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->isResumed:Z

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/phone/PhoneCallService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 67
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 68
    return-void
.end method

.method public onStopInternal()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStopInternal()V

    .line 85
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 86
    return-void
.end method

.method protected scheduleToShowGlassTipsForMenu()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
