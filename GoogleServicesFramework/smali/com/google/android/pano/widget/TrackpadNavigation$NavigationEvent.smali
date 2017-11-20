.class public Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
.super Ljava/lang/Object;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationEvent"
.end annotation


# instance fields
.field public time:J

.field public type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    .line 71
    return-void
.end method

.method protected constructor <init>(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "time"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->type:I

    .line 67
    iput-wide p2, p0, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;->time:J

    .line 68
    return-void
.end method
