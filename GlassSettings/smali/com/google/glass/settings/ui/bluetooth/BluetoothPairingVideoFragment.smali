.class public Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;
.super Landroid/app/Fragment;
.source "BluetoothPairingVideoFragment.java"


# static fields
.field private static final ANDROID_PAIRING_VIDEO:Ljava/lang/String; = "android_bluetooth_pairing"

.field private static final EXTRA_MODE:Ljava/lang/String; = "state"

.field private static final IOS_HOTSPOT_VIDEO:Ljava/lang/String; = "ios_hotspot"

.field private static final IOS_PAIRING_VIDEO:Ljava/lang/String; = "ios_bluetooth_pairing"

.field static final MODE_IPHONE_HOTSPOT:I = 0x2

.field static final MODE_PAIR_ANDROID:I = 0x0

.field static final MODE_PAIR_IPHONE:I = 0x1


# instance fields
.field private bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

.field private glassVideoView:Lcom/google/glass/widget/GlassVideoView;

.field private mode:I

.field private videoText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 103
    new-instance v0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;

    invoke-direct {v0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;-><init>()V

    .line 105
    .local v0, "bluetoothPairingVideoFragment":Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "state"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v0
.end method

.method private highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "highlight"    # Ljava/lang/String;
    .param p3, "highlightColorArgb"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .local v0, "s":Landroid/text/SpannableStringBuilder;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, "start":I
    if-ltz v1, :cond_0

    .line 91
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 93
    :cond_0
    return-object v0
.end method


# virtual methods
.method getModeForTest()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 99
    iget v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->mode:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->mode:I

    .line 41
    invoke-static {}, Lcom/google/glass/util/BluetoothHelperProvider;->getInstance()Lcom/google/glass/util/BluetoothHelperProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelperProvider;->get()Lcom/google/glass/util/BluetoothHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47
    sget v2, Lcom/google/glass/settings/ui/R$layout;->bluetooth_pairing_video_fragment:I

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/google/glass/settings/ui/R$id;->videoView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/GlassVideoView;

    iput-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    .line 49
    sget v2, Lcom/google/glass/settings/ui/R$id;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->videoText:Landroid/widget/TextView;

    .line 50
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v2}, Lcom/google/glass/util/BluetoothHelper;->getBluetoothName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "bluetoothName":Ljava/lang/String;
    iget v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    return-object v1

    .line 53
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    const-string v3, "android_bluetooth_pairing"

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->thumbnail_android_bluetooth_pairing:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/widget/GlassVideoView;->setupVideo(Ljava/lang/String;IZ)V

    .line 55
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->videoText:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/settings/ui/R$string;->android_pair:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 55
    invoke-direct {p0, v3, v0, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    const-string v3, "ios_bluetooth_pairing"

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->thumbnail_ios_bluetooth_pairing:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/widget/GlassVideoView;->setupVideo(Ljava/lang/String;IZ)V

    .line 61
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->videoText:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/settings/ui/R$string;->iphone_pair:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 61
    invoke-direct {p0, v3, v0, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    const-string v3, "ios_hotspot"

    sget v4, Lcom/google/glass/settings/ui/R$drawable;->thumbnail_ios_hotspot:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/widget/GlassVideoView;->setupVideo(Ljava/lang/String;IZ)V

    .line 67
    iget-object v2, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->videoText:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/settings/ui/R$string;->turn_on_personal_hotspot:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/glass/settings/ui/R$string;->personal_hotspot:I

    .line 68
    invoke-virtual {p0, v4}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/glass/settings/ui/R$color;->state_green:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 67
    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->highlightText(Ljava/lang/CharSequence;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->stop()V

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->glassVideoView:Lcom/google/glass/widget/GlassVideoView;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassVideoView;->start()V

    .line 78
    iget-object v0, p0, Lcom/google/glass/settings/ui/bluetooth/BluetoothPairingVideoFragment;->bluetoothHelper:Lcom/google/glass/util/BluetoothHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BluetoothHelper;->makeBluetoothDiscoverable()V

    .line 79
    return-void
.end method
