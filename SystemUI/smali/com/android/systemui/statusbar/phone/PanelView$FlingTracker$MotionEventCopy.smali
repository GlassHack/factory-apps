.class Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
.super Ljava/lang/Object;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MotionEventCopy"
.end annotation


# instance fields
.field public t:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0
    .param p1, "x2"    # F
    .param p2, "y2"    # F
    .param p3, "eventTime"    # J

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    .line 99
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    .line 100
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    .line 101
    return-void
.end method
