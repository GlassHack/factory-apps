.class final Lcom/google/android/gms/panorama/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/panorama/g/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/panorama/g/a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/panorama/g/c;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/c;->a:Lcom/google/android/gms/panorama/g/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/a;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/c;->a:Lcom/google/android/gms/panorama/g/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/panorama/g/a;->setClickable(Z)V

    .line 74
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/c;->a:Lcom/google/android/gms/panorama/g/a;

    invoke-static {v0}, Lcom/google/android/gms/panorama/g/a;->b(Lcom/google/android/gms/panorama/g/a;)Z

    .line 65
    return-void
.end method
