.class Lcom/android/systemui/statusbar/phone/QuickSettings$8;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 396
    .local v0, "enable":Z
    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$8;Z)V

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings$8$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$8;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setPressed(Z)V

    .line 411
    return v1

    .end local v0    # "enable":Z
    :cond_0
    move v0, v2

    .line 394
    goto :goto_0
.end method
