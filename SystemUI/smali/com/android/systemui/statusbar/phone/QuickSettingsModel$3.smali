.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V

    goto :goto_0
.end method
