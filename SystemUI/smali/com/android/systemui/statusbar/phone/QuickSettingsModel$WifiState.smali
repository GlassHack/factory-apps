.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiState"
.end annotation


# instance fields
.field connected:Z

.field signalContentDescription:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;-><init>()V

    return-void
.end method
