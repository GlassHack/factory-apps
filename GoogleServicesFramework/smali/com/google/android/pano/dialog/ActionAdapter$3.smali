.class Lcom/google/android/pano/dialog/ActionAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/ActionAdapter;->fadeCheckmarks(Landroid/view/View;Lcom/google/android/pano/dialog/Action;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/ActionAdapter;

.field final synthetic val$checkView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/ActionAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/pano/dialog/ActionAdapter$3;->this$0:Lcom/google/android/pano/dialog/ActionAdapter;

    iput-object p2, p0, Lcom/google/android/pano/dialog/ActionAdapter$3;->val$checkView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/pano/dialog/ActionAdapter$3;->val$checkView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 498
    return-void
.end method
