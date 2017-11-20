.class final Lcom/google/android/youtube/core/player/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/player/c;->a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/player/c;->a:Lcom/google/android/youtube/core/player/DefaultPlayerSurface;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/DefaultPlayerSurface;->f(Lcom/google/android/youtube/core/player/DefaultPlayerSurface;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void
.end method
