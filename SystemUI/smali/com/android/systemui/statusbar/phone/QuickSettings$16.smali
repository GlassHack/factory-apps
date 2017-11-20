.class Lcom/android/systemui/statusbar/phone/QuickSettings$16;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


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

.field final synthetic val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 6
    .param p1, "unused"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a0062

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "airplaneState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0087

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$16;->val$airplaneTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void

    .line 547
    .end local v0    # "airplaneState":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a0063

    goto :goto_0
.end method
