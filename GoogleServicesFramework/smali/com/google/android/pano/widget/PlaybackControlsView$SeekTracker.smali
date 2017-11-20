.class public Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;
.super Ljava/lang/Object;
.source "PlaybackControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/PlaybackControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekTracker"
.end annotation


# instance fields
.field public seeking:Z

.field final synthetic this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

.field public value:F


# direct methods
.method protected constructor <init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V
    .locals 1

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->seeking:Z

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView$SeekTracker;->value:F

    return-void
.end method
