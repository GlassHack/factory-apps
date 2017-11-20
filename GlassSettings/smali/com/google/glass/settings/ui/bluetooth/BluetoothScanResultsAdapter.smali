.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;
.super Lcom/google/android/glass/widget/CardScrollAdapter;
.source "BluetoothScanResultsAdapter.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field connectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isSearchingTabVisible:Z

.field private final scannedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private scanningCard:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "scannedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-direct {p0}, Lcom/google/android/glass/widget/CardScrollAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->connectedDevices:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    .line 34
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->buildScanCard()Landroid/view/View;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->isSearchingTabVisible:Z

    .line 36
    return-void
.end method

.method private buildScanCard()Landroid/view/View;
    .locals 4

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "nullParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->bluetooth_device_scanning:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scanningCard:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scanningCard:Landroid/view/View;

    return-object v1
.end method

.method private getScannedDeviceView(ILandroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 85
    if-nez p2, :cond_4

    .line 86
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$layout;->bluetooth_device_item:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    sget-object v8, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Instantiating a new view for position %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_0
    sget v8, Lcom/google/glass/settings/ui/R$id;->device_discovery_title:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    .local v3, "deviceIdView":Landroid/widget/TextView;
    sget v8, Lcom/google/glass/settings/ui/R$id;->device_icon:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .local v2, "deviceIcon":Landroid/widget/ImageView;
    sget v8, Lcom/google/glass/settings/ui/R$id;->device_discovery_footer:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 94
    .local v5, "footer":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$color;->state_red:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 95
    .local v6, "footerColor":I
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$string;->bluetooth_not_connected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "footerMessage":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 97
    invoke-static {v8}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v1

    .line 99
    .local v1, "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    const/4 v0, 0x0

    .line 100
    .local v0, "bluetoothDeviceIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 102
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->isHID()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$drawable;->ic_keyboard_150:I

    .line 109
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 112
    :cond_0
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->connectedDevices:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->connectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    sget-object v9, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Device connected: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface {v9, v8, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$string;->bluetooth_connected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 115
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 120
    .end local v4    # "deviceName":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 121
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_on_150:I

    .line 122
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v8, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->connectedDevices:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 127
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_3
    return-object p2

    .line 89
    .end local v0    # "bluetoothDeviceIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .end local v2    # "deviceIcon":Landroid/widget/ImageView;
    .end local v3    # "deviceIdView":Landroid/widget/TextView;
    .end local v5    # "footer":Landroid/widget/TextView;
    .end local v6    # "footerColor":I
    .end local v7    # "footerMessage":Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Reusing a view for position %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    .restart local v0    # "bluetoothDeviceIcon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "device":Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .restart local v2    # "deviceIcon":Landroid/widget/ImageView;
    .restart local v3    # "deviceIdView":Landroid/widget/TextView;
    .restart local v5    # "footer":Landroid/widget/TextView;
    .restart local v6    # "footerColor":I
    .restart local v7    # "footerMessage":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 113
    .restart local v4    # "deviceName":Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isDeviceView(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noDevicesFound()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->bluetooth_no_devices_available:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "noDevicesAvailable":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scanningCard:Landroid/view/View;

    sget v4, Lcom/google/glass/settings/ui/R$id;->device_discovery_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, "deviceIdView":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scanningCard:Landroid/view/View;

    sget v4, Lcom/google/glass/settings/ui/R$id;->device_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    .local v0, "deviceIcon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->ic_bluetooth_on_150:I

    .line 151
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void
.end method


# virtual methods
.method public discoveryFinished()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->noDevicesFound()V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->notifyDataSetChanged()V

    .line 78
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->isSearchingTabVisible:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 41
    .local v0, "size":I
    iget-boolean v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->isSearchingTabVisible:Z

    if-eqz v1, :cond_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "device"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 67
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scannedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->isDeviceView(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->getScannedDeviceView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->scanningCard:Landroid/view/View;

    goto :goto_0
.end method

.method public setConnectedDevices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;>;"
    iput-object p1, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothScanResultsAdapter;->connectedDevices:Ljava/util/ArrayList;

    .line 57
    return-void
.end method
