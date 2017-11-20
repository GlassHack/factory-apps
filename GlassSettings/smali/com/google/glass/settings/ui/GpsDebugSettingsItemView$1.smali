.class Lcom/google/glass/settings/ui/GpsDebugSettingsItemView$1;
.super Ljava/lang/Object;
.source "GpsDebugSettingsItemView.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView$1;->this$0:Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onLocationChanged: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Provider disabled: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/settings/ui/GpsDebugSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Provider enabled: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 40
    return-void
.end method
