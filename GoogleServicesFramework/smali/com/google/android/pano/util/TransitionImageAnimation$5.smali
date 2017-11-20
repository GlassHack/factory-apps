.class Lcom/google/android/pano/util/TransitionImageAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionImageAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/util/TransitionImageAnimation;->cancelTransition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

.field final synthetic val$iv:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$5;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    iput-object p2, p0, Lcom/google/android/pano/util/TransitionImageAnimation$5;->val$iv:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageAnimation$5;->this$0:Lcom/google/android/pano/util/TransitionImageAnimation;

    invoke-static {v0}, Lcom/google/android/pano/util/TransitionImageAnimation;->access$400(Lcom/google/android/pano/util/TransitionImageAnimation;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageAnimation$5;->val$iv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    return-void
.end method
