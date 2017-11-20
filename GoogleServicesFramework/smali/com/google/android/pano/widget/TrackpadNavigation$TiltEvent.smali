.class public Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;
.super Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiltEvent"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 139
    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(IJ)V

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/TrackpadNavigation$1;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public set(JFF)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->time:J

    .line 147
    iput p3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->x:F

    .line 148
    iput p4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$TiltEvent;->y:F

    .line 149
    return-void
.end method
