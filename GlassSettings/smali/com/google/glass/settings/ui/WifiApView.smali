.class public Lcom/google/glass/settings/ui/WifiApView;
.super Lcom/google/glass/settings/ui/SettingsCard;
.source "WifiApView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/WifiApView$1;
    }
.end annotation


# instance fields
.field protected wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/WifiApView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/settings/ui/SettingsCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Lcom/google/glass/settings/ui/WifiLevels;

    invoke-direct {v0}, Lcom/google/glass/settings/ui/WifiLevels;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/WifiApView;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiApView;->initialize()V

    .line 31
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiApView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$layout;->wifi_settings_cover:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    .local v0, "dataStateLabel":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/settings/ui/R$string;->wifi_no_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    return-void
.end method

.method public setWifiData(ILcom/google/glass/util/WifiHelper$Encryption;Ljava/lang/String;)V
    .locals 10
    .param p1, "strength"    # I
    .param p2, "encryption"    # Lcom/google/glass/util/WifiHelper$Encryption;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 50
    sget v6, Lcom/google/glass/settings/ui/R$id;->setting_title:I

    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 51
    .local v2, "networkNameLabel":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, "dataStateLabel":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    .line 53
    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "connectionStateLabel":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    .line 55
    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 56
    .local v3, "otherNetworksLabel":Landroid/widget/TextView;
    sget v6, Lcom/google/glass/settings/ui/R$id;->wifi_security:I

    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 58
    .local v4, "securityLabel":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v6, Lcom/google/glass/settings/ui/R$string;->wifi_nearby:I

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WifiApView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/google/glass/settings/ui/R$color;->state_gray:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    sget-object v6, Lcom/google/glass/util/WifiHelper$Encryption;->NONE:Lcom/google/glass/util/WifiHelper$Encryption;

    if-ne p2, v6, :cond_0

    .line 65
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    sget v6, Lcom/google/glass/settings/ui/R$id;->wifi_signal_strength:I

    invoke-virtual {p0, v6}, Lcom/google/glass/settings/ui/WifiApView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 83
    .local v5, "signalStrengthImage":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/google/glass/settings/ui/WifiApView;->wifiLevels:Lcom/google/glass/settings/ui/WifiLevels;

    invoke-virtual {v6, p1}, Lcom/google/glass/settings/ui/WifiLevels;->getImageResourceForStrength(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-void

    .line 67
    .end local v5    # "signalStrengthImage":Landroid/widget/ImageView;
    :cond_0
    sget-object v6, Lcom/google/glass/settings/ui/WifiApView$1;->$SwitchMap$com$google$glass$util$WifiHelper$Encryption:[I

    invoke-virtual {p2}, Lcom/google/glass/util/WifiHelper$Encryption;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 76
    :goto_1
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :pswitch_0
    sget v6, Lcom/google/glass/settings/ui/R$string;->wifi_encryption_wep:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 73
    :pswitch_1
    sget v6, Lcom/google/glass/settings/ui/R$string;->wifi_encryption_wpa:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
