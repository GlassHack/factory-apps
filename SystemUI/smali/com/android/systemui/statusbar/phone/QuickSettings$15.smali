.class Lcom/android/systemui/statusbar/phone/QuickSettings$15;
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

.field final synthetic val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 8
    .param p1, "unused"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 523
    .local v0, "batteryState":Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;
    iget v2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "t":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0086

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 535
    return-void

    .line 526
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a009f

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "t":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v1    # "t":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$15;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0018

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
