.class public Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothState"
.end annotation


# instance fields
.field connected:Z

.field stateContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    return-void
.end method
