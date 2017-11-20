.class public Lcom/android/providers/calendar/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# direct methods
.method public static writeCalendarUpgradeReceiver(J)V
    .locals 1
    .param p0, "time"    # J

    .prologue
    .line 17
    const/16 v0, 0xfa0

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 18
    return-void
.end method
