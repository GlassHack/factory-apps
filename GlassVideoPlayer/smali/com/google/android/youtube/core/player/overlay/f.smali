.class final Lcom/google/android/youtube/core/player/overlay/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/overlay/k;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;Lcom/google/android/youtube/core/player/overlay/f;)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/overlay/f;-><init>(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/TimeBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setScrubbing(Z)V

    .line 895
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d()V

    .line 896
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/TimeBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setScrubberTime(I)V

    .line 901
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 912
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_2

    .line 914
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/TimeBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/overlay/TimeBar;->setScrubbing(Z)V

    .line 906
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->a(I)V

    .line 907
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PAUSED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_1

    .line 923
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->ENDED:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 925
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->b(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;->PLAYING:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay$State;

    if-ne v0, v1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    .line 934
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->d(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/f;->a:Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;->c(Lcom/google/android/youtube/core/player/overlay/DefaultControllerOverlay;)Lcom/google/android/youtube/core/player/overlay/e;

    .line 941
    :cond_0
    return-void
.end method
