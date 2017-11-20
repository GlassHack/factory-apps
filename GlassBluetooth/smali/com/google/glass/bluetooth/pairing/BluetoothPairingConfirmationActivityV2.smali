.class public Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;
.super Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;
.source "BluetoothPairingConfirmationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$TroubleShootDialog;
    }
.end annotation


# static fields
.field private static final DELAY_BEFORE_START_PAIRING_MS:J = 0x1388L


# instance fields
.field private dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

.field private hintView:Landroid/widget/TextView;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private nextPendingTask:Ljava/lang/Runnable;

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private troubleShootDialog:Lcom/google/glass/widget/SimpleDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$1;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SimpleDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->troubleShootDialog:Lcom/google/glass/widget/SimpleDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;Lcom/google/glass/widget/SimpleDialog;)Lcom/google/glass/widget/SimpleDialog;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;
    .param p1, "x1"    # Lcom/google/glass/widget/SimpleDialog;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->troubleShootDialog:Lcom/google/glass/widget/SimpleDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->nextPendingTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Lcom/google/glass/widget/SliderView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->sliderView:Lcom/google/glass/widget/SliderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->hintView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected inflateViewStub()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->nextPendingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->nextPendingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    invoke-super {p0, p1}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResumeInternal()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivity;->onResumeInternal()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->stayAwake()V

    .line 53
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/google/glass/bluetooth/R$layout;->bluetooth_pairing_confirmation_v2:I

    return v0
.end method

.method protected showPairingFailedDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->closeActiveDialog()V

    .line 109
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 110
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$string;->bluetooth_failed:I

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$string;->tap_for_troubleshoot:I

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/bluetooth/R$drawable;->ic_warning_150:I

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->dismissListener:Lcom/google/glass/widget/MessageDialog$Listener;

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->currentDialog:Landroid/app/Dialog;

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->currentDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 120
    return-void
.end method

.method protected showPairingInProgressDialog(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method protected updateUi()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    sget v0, Lcom/google/glass/bluetooth/R$id;->slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 67
    sget v0, Lcom/google/glass/bluetooth/R$id;->pairingCodeView:I

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%06d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->passKey:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget v0, Lcom/google/glass/bluetooth/R$id;->phoneName:I

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/glass/bluetooth/R$string;->pairing_with:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->deviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 69
    invoke-virtual {p0, v1, v2}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget v0, Lcom/google/glass/bluetooth/R$id;->hintView:I

    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->hintView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->hintView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, v6, v7}, Lcom/google/glass/widget/SliderView;->startProgress(J)V

    .line 74
    new-instance v0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2$2;-><init>(Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->nextPendingTask:Ljava/lang/Runnable;

    .line 84
    iget-object v0, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/bluetooth/pairing/BluetoothPairingConfirmationActivityV2;->nextPendingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method
