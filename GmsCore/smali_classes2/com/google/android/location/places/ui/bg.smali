.class final Lcom/google/android/location/places/ui/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/ui/be;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/ui/be;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/location/places/ui/bg;->a:Lcom/google/android/location/places/ui/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/location/places/ui/bg;->a:Lcom/google/android/location/places/ui/be;

    invoke-static {v0}, Lcom/google/android/location/places/ui/be;->b(Lcom/google/android/location/places/ui/be;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
