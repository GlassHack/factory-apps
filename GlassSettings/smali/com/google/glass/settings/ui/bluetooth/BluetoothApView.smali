.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "BluetoothApView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->initialize()V

    .line 27
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$layout;->bluetooth_settings_cover:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->bluetooth_tethered_no_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->setBluetoothData(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public setBluetoothData(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, "deviceNameLabel":Landroid/widget/TextView;
    sget v2, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v2}, Lcom/google/glass/settings/ui/bluetooth/BluetoothApView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "deviceStateLabel":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    return-void
.end method
