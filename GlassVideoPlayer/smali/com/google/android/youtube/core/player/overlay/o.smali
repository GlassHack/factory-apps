.class final Lcom/google/android/youtube/core/player/overlay/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/o;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/o;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/o;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/o;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/o;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_OUT:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;)V

    .line 101
    return-void
.end method
