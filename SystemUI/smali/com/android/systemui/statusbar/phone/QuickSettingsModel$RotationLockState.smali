.class public Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotationLockState"
.end annotation


# instance fields
.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->visible:Z

    return-void
.end method
