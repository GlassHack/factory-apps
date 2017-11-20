.class Lcom/google/android/pano/widget/PlaybackControlsView$3;
.super Ljava/lang/Object;
.source "PlaybackControlsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/PlaybackControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/PlaybackControlsView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/PlaybackControlsView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/android/pano/widget/PlaybackControlsView$3;->this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/pano/widget/PlaybackControlsView$3;->this$0:Lcom/google/android/pano/widget/PlaybackControlsView;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/PlaybackControlsView;->updatePlayPause()V

    .line 210
    return-void
.end method
