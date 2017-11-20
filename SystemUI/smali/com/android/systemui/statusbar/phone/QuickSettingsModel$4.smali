.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRemoteDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
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
    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepare()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 670
    return-void
.end method

.method public onUnprepare()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/media/MediaRouter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 674
    return-void
.end method
