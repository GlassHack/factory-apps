.class Lcom/android/systemui/statusbar/phone/QuickSettings$9;
.super Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
.source "QuickSettings.java"


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
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$1;)V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 9
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    .line 417
    move-object v2, p2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 418
    .local v2, "wifiState":Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;
    const v3, 0x7f070005

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 419
    .local v0, "iv":Landroid/widget/ImageView;
    iget v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->iconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->setActivity(Landroid/view/View;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;)V

    .line 421
    const v3, 0x7f07001f

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 422
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0084

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    aput-object v8, v7, v3

    const/4 v8, 0x1

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->label:Ljava/lang/String;

    :goto_0
    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 427
    return-void

    .line 423
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method
