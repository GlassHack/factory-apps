.class public Lcom/android/systemui/statusbar/policy/BluetoothController;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# instance fields
.field private mBondedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 36
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 50
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireCallbacks()V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    .line 55
    return-void
.end method

.method private fireCallbacks()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 100
    .local v0, "cb":Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    goto :goto_0

    .line 102
    .end local v0    # "cb":Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    :cond_0
    return-void
.end method

.method private handleAdapterStateChange(I)V
    .locals 1
    .param p1, "adapterState"    # I

    .prologue
    .line 95
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mEnabled:Z

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBondedBluetoothDevices()V
    .locals 6

    .prologue
    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 81
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 83
    .local v2, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 85
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mBondedDevices:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->handleAdapterStateChange(I)V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->fireCallbacks()V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->updateBondedBluetoothDevices()V

    .line 75
    return-void
.end method
