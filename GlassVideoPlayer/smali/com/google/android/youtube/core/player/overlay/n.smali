.class final Lcom/google/android/youtube/core/player/overlay/n;
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
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/n;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/n;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/n;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)V

    .line 92
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/n;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/n;->a:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_IN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;)V

    .line 82
    return-void
.end method
