.class Lcom/android/systemui/statusbar/phone/QuickSettings$24;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->val$alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 6
    .param p1, "unused"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "alarmState"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    const/4 v1, 0x0

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->val$alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->val$alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->val$alarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$24;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a008a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    return-void

    .line 667
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
