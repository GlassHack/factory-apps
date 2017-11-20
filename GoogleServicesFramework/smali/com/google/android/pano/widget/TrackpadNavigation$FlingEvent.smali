.class public Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;
.super Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;
.source "TrackpadNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/TrackpadNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlingEvent"
.end annotation


# instance fields
.field public direction:I

.field public repeats:I

.field public sensitivityX:F

.field public sensitivityY:F

.field public velocityX:F

.field public velocityY:F

.field public xSwipes:I

.field public xSwipesLastDirection:I

.field public ySwipes:I

.field public ySwipesLastDirection:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/pano/widget/TrackpadNavigation$NavigationEvent;-><init>(I)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/pano/widget/TrackpadNavigation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/pano/widget/TrackpadNavigation$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public set(JFFIIFFIIII)V
    .locals 0
    .param p1, "time"    # J
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .param p5, "xSwipes"    # I
    .param p6, "ySwipes"    # I
    .param p7, "sensitivityX"    # F
    .param p8, "sensitivityY"    # F
    .param p9, "xSwipesLastDirection"    # I
    .param p10, "ySwipesLastDirection"    # I
    .param p11, "direction"    # I
    .param p12, "repeats"    # I

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->time:J

    .line 109
    iput p3, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityX:F

    .line 110
    iput p4, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->velocityY:F

    .line 111
    iput p5, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipes:I

    .line 112
    iput p6, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipes:I

    .line 113
    iput p9, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->xSwipesLastDirection:I

    .line 114
    iput p10, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->ySwipesLastDirection:I

    .line 115
    iput p7, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityX:F

    .line 116
    iput p8, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->sensitivityY:F

    .line 117
    iput p11, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->direction:I

    .line 118
    iput p12, p0, Lcom/google/android/pano/widget/TrackpadNavigation$FlingEvent;->repeats:I

    .line 119
    return-void
.end method
