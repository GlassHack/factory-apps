.class Lcom/google/android/pano/dialog/BaseDialogFragment$1;
.super Lcom/google/android/pano/util/TransitionImageAnimation$Listener;
.source "BaseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/BaseDialogFragment;->performEntryTransition(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iput-object p2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageAnimation$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovedView(Lcom/google/android/pano/util/TransitionImage;Lcom/google/android/pano/util/TransitionImage;)V
    .locals 5
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;
    .param p2, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 148
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/pano/util/TransitionImage;->getBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 156
    .local v0, "intrinsicWidth":I
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 157
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    .end local v0    # "intrinsicWidth":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v2, v2, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iget-object v2, v2, Lcom/google/android/pano/dialog/BaseDialogFragment;->mShadowLayer:Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    invoke-virtual {v2, v4}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->setShadowsAlpha(F)V

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$1;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    invoke-virtual {v2}, Lcom/google/android/pano/dialog/BaseDialogFragment;->onIntroAnimationFinished()V

    .line 167
    return-void
.end method
