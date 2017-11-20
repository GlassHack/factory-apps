.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayRouteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 207
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 211
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 215
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 219
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 223
    return-void
.end method
