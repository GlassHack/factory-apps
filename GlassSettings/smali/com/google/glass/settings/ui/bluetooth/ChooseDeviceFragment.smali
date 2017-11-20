.class public Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;
.super Landroid/app/Fragment;
.source "ChooseDeviceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment$1;
    }
.end annotation


# instance fields
.field private adapter:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;

.field private bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private lastScrollerPostion:I

.field private scroller:Lcom/google/android/glass/widget/CardScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->lastScrollerPostion:I

    return-void
.end method

.method private pushFragment(Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/settings/ui/bluetooth/InitiateBluetoothPairingActivity;->pushFragment(Landroid/app/Fragment;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getSoundManager()Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->adapter:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;

    .line 34
    invoke-static {}, Lcom/google/glass/util/BluetoothHelperProvider;->getInstance()Lcom/google/glass/util/BluetoothHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelperProvider;->get()Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget v0, Lcom/google/glass/settings/ui/R$layout;->choose_device_fragment:I

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/widget/CardScrollView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    .line 42
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->adapter:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 44
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 66
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->adapter:Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;

    invoke-virtual {v1, p3}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter;->getItem(I)Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;

    move-result-object v0

    .line 67
    .local v0, "device":Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;
    sget-object v1, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment$1;->$SwitchMap$com$google$glass$settings$ui$bluetooth$DeviceCardAdapter$Device:[I

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/bluetooth/DeviceCardAdapter$Device;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->create(I)Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->pushFragment(Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;)V

    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->create(I)Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->pushFragment(Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->lastScrollerPostion:I

    .line 59
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->deactivate()V

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 51
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollView;->activate()V

    .line 52
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->scroller:Lcom/google/android/glass/widget/CardScrollView;

    iget v1, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->lastScrollerPostion:I

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setSelection(I)V

    .line 53
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/ChooseDeviceFragment;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->cancelDiscoverable()V

    .line 54
    return-void
.end method
