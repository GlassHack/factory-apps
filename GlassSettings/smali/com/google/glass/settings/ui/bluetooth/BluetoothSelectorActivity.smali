.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BluetoothSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

.field private static final AWAKE_TIMEOUT_MS:I = 0xea60

.field private static final PAIRING_COMPLETED:Ljava/lang/String; = "pairing_completed"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

.field private final bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

.field private hasDiscoveryFinished:Z

.field private pairingCompleted:Z

.field private pairingDialog:Lcom/google/glass/widget/MessageDialog;

.field private final pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;

.field private pairingRequestInitiated:Z

.field private powerHelper:Lcom/google/glass/util/PowerHelper;

.field private scannedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.device.action.FOUND"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.glass.bluetooth.PAIRED_DEVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 56
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "deviceScanningReceiver"

    .line 57
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingRequestInitiated:Z

    .line 32
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingCompleted:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->hasDiscoveryFinished:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->scannedDevices:Ljava/util/HashMap;

    .line 39
    iput-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 42
    invoke-static {}, Lcom/google/glass/bluetooth/BluetoothAdapter;->getDefaultAdapter()Lcom/google/glass/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    .line 44
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;

    .line 200
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->ACTIONS_TO_REGISTER_RECEIVER_FOR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->scannedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingRequestInitiated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)Lcom/google/glass/util/PowerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->showPairedDialog()V

    return-void
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private showPairedDialog()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 196
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_paired:I

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 198
    :cond_0
    return-void
.end method

.method private showPairingDialog()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_medium:I

    .line 180
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;)V

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_pairing:I

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 190
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 191
    return-void
.end method

.method private startDiscovery()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 167
    return-void
.end method

.method private stopDiscovery()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->bluetoothAdapter:Lcom/google/glass/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->scannedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "onCreateInternal savedInstanceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    const-string v0, "pairing_completed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingCompleted:Z

    .line 70
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingCompleted:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Pairing already completed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->finish()V

    .line 76
    :cond_0
    sget v0, Lcom/google/glass/settings/ui/R$id;->device_aps:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    .line 77
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v0, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    invoke-static {}, Lcom/google/glass/util/PowerHelperProvider;->getInstance()Lcom/google/glass/util/PowerHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/util/PowerHelperProvider;->from(Landroid/content/Context;)Lcom/google/glass/util/PowerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    .line 81
    return-void

    :cond_1
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method protected onDestroyInternal()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 96
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 142
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->getSelectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 149
    .local v1, "result":Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_0

    .line 150
    sget-object v2, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No device selected"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 155
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    sget-object v2, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Create bond with %s, class %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 157
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 158
    iput-boolean v7, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingRequestInitiated:Z

    .line 159
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->showPairingDialog()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->setIntent(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method protected onPauseInternal()V
    .locals 6

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 108
    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s onPausedInternal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->deactivate()V

    .line 111
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->stopDiscovery()V

    .line 113
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 114
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 115
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v1}, Lcom/google/glass/util/PowerHelper;->dontStayAwake()V

    .line 116
    return-void
.end method

.method public onResumeInternal()V
    .locals 6

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 121
    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s onResumeInternal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->activate()V

    .line 124
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 125
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity$ScanningBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->startDiscovery()V

    .line 127
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->powerHelper:Lcom/google/glass/util/PowerHelper;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/util/PowerHelper;->stayAwake(J)V

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingRequestInitiated:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "pairing_completed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method protected onStopInternal()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothSelectorActivity;->pairingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onStopInternal()V

    .line 136
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/google/glass/settings/ui/R$layout;->bluetooth_menu_activity:I

    return v0
.end method
