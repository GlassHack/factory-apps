.class Lcom/google/android/pano/dialog/BaseDialogFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/BaseDialogFragment;->prepareAndAnimateView(Landroid/view/View;FFIILandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

.field final synthetic val$isIcon:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iput-object p2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->val$v:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->val$isIcon:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 277
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->val$isIcon:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v0, v0, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$3;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/BaseDialogFragment;->onIntroAnimationFinished()V

    .line 283
    :cond_1
    return-void
.end method
