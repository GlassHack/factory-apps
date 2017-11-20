.class public Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BluetoothPairingConfirmationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_TEST_DEVICE_NAME:Ljava/lang/String; = "com.google.glass.TEST_DEVICE_NAME"

.field private static final PAIRING_COMPLETED:Ljava/lang/String; = "pairing_completed"

.field private static final PAIRING_TIMEOUT_MS:J = 0xea60L


# instance fields
.field protected currentDialog:Landroid/app/Dialog;

.field protected device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field protected deviceName:Ljava/lang/String;

.field private final dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field protected handler:Landroid/os/Handler;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private pairingCompleted:Z

.field private final pairingReceiver:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;

.field private pairingVariant:I

.field protected passKey:I

.field protected powerHelper:Lcom/google/glass/util/PowerHelper;

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 55
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingCompleted:Z

    .line 71
    new-instance v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->timeoutRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$2;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 87
    new-instance v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingReceiver:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;

    .line 340
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->timeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->showPairedDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private showPairedDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->closeActiveDialog()V

    .line 302
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 303
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 304
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$string;->bluetooth_pairing_successful:I

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$string;->bluetooth_paired_with:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 306
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$drawable;->ic_done_150:I

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 308
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    .line 309
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 311
    return-void
.end method


# virtual methods
.method protected cancelPairing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cancelling pairing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->CONNECTIVITY_BT_PAIRING_LOCAL_CANCEL:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->cancelPairingUserInput()V

    .line 194
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Skipping actual Bluetooth operation, since this is a test."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method closeActiveDialog()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    instance-of v0, v0, Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 262
    iput-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    .line 264
    :cond_1
    return-void
.end method

.method getCurrentDialogForTest()Landroid/app/Dialog;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 332
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected inflateViewStub()V
    .locals 2

    .prologue
    .line 105
    sget v1, Lcom/google/glass/bluetooth/R$id;->bluetooth_device_stub:I

    invoke-virtual {p0, v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 106
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 107
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onConfirm"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 206
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->startPairingSequence()V

    .line 209
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v2, "pairing_completed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v2

    if-ne v0, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingCompleted:Z

    .line 94
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingCompleted:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Pairing already completed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->finish()V

    .line 99
    :cond_0
    invoke-static {}, Lcom/google/glass/async/HandlerProvider;->getInstance()Lcom/google/glass/async/HandlerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/HandlerProvider;->get()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->inflateViewStub()V

    .line 102
    return-void

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->cancelPairing()V

    .line 186
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingReceiver:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 142
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 143
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipesX"    # I
    .param p7, "numSwipesY"    # I

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 117
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingReceiver:Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;

    invoke-virtual {v1, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity$PairingBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->getInstance()Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapperProvider;->get(Landroid/content/Intent;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 121
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v2, -0x80000000

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->passKey:I

    .line 123
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingVariant:I

    .line 126
    const-string v1, "com.google.glass.TEST_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "com.google.glass.TEST_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->deviceName:Ljava/lang/String;

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->updateUi()V

    .line 134
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/google/glass/bluetooth/R$string;->bluetooth_empty_name:I

    .line 131
    invoke-virtual {p0, v1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->deviceName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingCompleted:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "pairing_completed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 150
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 1
    .param p1, "fingerCount"    # I
    .param p2, "direction"    # Lcom/google/glass/input/SwipeDirection;

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/google/glass/bluetooth/R$layout;->bluetooth_pairing_confirmation:I

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method protected showPairingFailedDialog()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->closeActiveDialog()V

    .line 287
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$string;->bluetooth_failed:I

    .line 290
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$drawable;->ic_warning_150:I

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 292
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 295
    return-void
.end method

.method protected showPairingInProgressDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 270
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->closeActiveDialog()V

    .line 271
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$drawable;->ic_bluetooth_medium:I

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    .line 278
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 280
    return-void
.end method

.method protected startPairingSequence()V
    .locals 10

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 213
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-nez v2, :cond_0

    .line 250
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingVariant:I

    packed-switch v2, :pswitch_data_0

    .line 246
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unsupported Bluetooth pairing variant: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->pairingVariant:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->finish()V

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Setting pairing confirmation."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2, v7}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->setPairingConfirmation(Z)V

    .line 225
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/bluetooth/R$string;->bluetooth_pairing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->showPairingInProgressDialog(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Waiting for pairing pin to arrive. passKey=%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->passKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const-string v2, "%04d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->passKey:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "pinString":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->setPin(Ljava/lang/String;)V

    .line 238
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + Enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->showPairingInProgressDialog(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected updateUi()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v9, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 158
    sget v6, Lcom/google/glass/bluetooth/R$id;->bluetooth_icon:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 159
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v6, Lcom/google/glass/bluetooth/R$id;->setting_title:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 160
    .local v3, "nameView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/bluetooth/R$id;->setting_details:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "tetheredView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/bluetooth/R$id;->setting_extra_details1:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, "companionView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/bluetooth/R$id;->setting_info:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, "pairingView":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/bluetooth/R$id;->setting_value:I

    invoke-virtual {p0, v6}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, "headsetConnectionView":Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v6, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    sget v6, Lcom/google/glass/bluetooth/R$drawable;->ic_phone_on_150:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    sget v6, Lcom/google/glass/bluetooth/R$string;->bluetooth_pair:I

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 177
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/bluetooth/R$color;->state_green:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    sget v6, Lcom/google/glass/bluetooth/R$string;->bluetooth_pair_confirm:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->passKey:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method
