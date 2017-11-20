.class Lcom/google/android/pano/util/TransitionImageAnimation$3;
.super Ljava/lang/Object;
.source "TransitionImageAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;->startTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TransitionImageAnimation;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TransitionImageAnimation;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$3;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 262
    .local v0, "progress":F
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$3;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v1, v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$100(Lcom/google/android/pano/util/TransitionImageAnimation;F)V

    .line 263
    return-void
.end method
