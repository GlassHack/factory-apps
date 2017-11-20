.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "BluetoothBondedDevicesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final FORGETTING_COMPLETED:Ljava/lang/String; = "forgetting_completed"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

.field private final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private forgettingDialog:Lcom/google/glass/widget/MessageDialog;

.field private forgettingInitiated:Z

.field private final pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;

.field private selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 38
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    iput-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 44
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;

    .line 46
    iput-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingInitiated:Z

    .line 235
    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingInitiated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->showForgettenDialog(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 227
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->finish()V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private showForgettenDialog(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 197
    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$2;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 207
    .local v1, "listener":Lcom/google/glass/widget/MessageDialog$SimpleListener;
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)V

    .line 209
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog;->autoHide()V

    .line 210
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    sget v3, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgotten:I

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog;->updateContent(II)V

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    .line 213
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v3, 0x1

    .line 214
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 215
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 216
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgotten:I

    .line 218
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 221
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    goto :goto_0
.end method

.method private showForgettingDialog()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const/4 v1, 0x0

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_delete_50:I

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$1;-><init>(Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_forgetting:I

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    .line 193
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingDialog:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 194
    return-void
.end method


# virtual methods
.method protected hasMenu()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v8, "forgetting_completed"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    if-ne v7, v8, :cond_1

    move v3, v7

    .line 62
    .local v3, "forgettingCompleted":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 63
    sget-object v8, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Forgetting completed"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v8, v9, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->showForgettenDialog(Landroid/bluetooth/BluetoothDevice;)V

    .line 68
    .end local v3    # "forgettingCompleted":Z
    :cond_0
    sget v6, Lcom/google/glass/settings/ui/R$id;->device_aps:I

    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    iput-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    .line 69
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v6, v7}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "connectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "connected_devices"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .local v4, "parcelable":Landroid/os/Parcelable;
    move-object v1, v4

    .line 73
    check-cast v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 74
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "connectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    .end local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v4    # "parcelable":Landroid/os/Parcelable;
    :cond_1
    move v3, v6

    .line 61
    goto :goto_0

    .line 76
    .restart local v0    # "connectedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    :cond_2
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v6, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setConnectedDevices(Ljava/util/ArrayList;)V

    .line 78
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 80
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_5

    .line 81
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 82
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v5

    .line 83
    .local v5, "wrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    invoke-virtual {v5}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 84
    iget-object v7, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v7, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 87
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "wrapper":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    :cond_4
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v6}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->discoveryFinished()V

    .line 91
    :cond_5
    iget-object v6, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v6, p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 168
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget v1, Lcom/google/glass/settings/ui/R$menu;->bluetooth_bonded_devices_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroyInternal()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 97
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 2
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 144
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 174
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onItemClick, position %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->getSelectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 176
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->openOptionsMenu()V

    .line 177
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->setIntent(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 151
    .local v0, "itemResId":I
    sget-object v3, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "onOptionsItemSelected()=%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    sget v3, Lcom/google/glass/settings/ui/R$id;->forget_device:I

    if-ne v0, v3, :cond_1

    .line 154
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v2}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->removeBond()V

    .line 156
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->showForgettingDialog()V

    .line 157
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingInitiated:Z

    .line 158
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->selectedDevice:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 162
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 6

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 123
    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "%s onPausedInternal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->deactivate()V

    .line 127
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 128
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 129
    return-void
.end method

.method public onResumeInternal()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 134
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->apsView:Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothCardScrollView;->activate()V

    .line 136
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 137
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->pairingReceiver:Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;

    invoke-virtual {v1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity$ScanningBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothBondedDevicesActivity;->forgettingInitiated:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "forgetting_completed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/google/glass/settings/ui/R$layout;->bluetooth_menu_activity:I

    return v0
.end method
