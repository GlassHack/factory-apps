.class Lcom/google/android/pano/dialog/BaseDialogFragment$2;
.super Ljava/lang/Object;
.source "BaseDialogFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/dialog/BaseDialogFragment;->performEntryTransition(Landroid/app/Activity;Landroid/view/ViewGroup;ILandroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mEntryAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$breadcrumb:Landroid/widget/TextView;

.field final synthetic val$description:Landroid/widget/TextView;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$iconUri:Landroid/net/Uri;

.field final synthetic val$title:Landroid/widget/TextView;

.field final synthetic val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

.field final synthetic val$twoPane:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/google/android/pano/dialog/BaseDialogFragment;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/ImageView;Lcom/google/android/pano/util/TransitionImageAnimation;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->this$0:Lcom/google/android/pano/dialog/BaseDialogFragment;

    iput-object p2, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$twoPane:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$title:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$breadcrumb:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$description:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$icon:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$transitionAnimation:Lcom/google/android/pano/util/TransitionImageAnimation;

    iput-object p9, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$iconUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/dialog/BaseDialogFragment$2$1;-><init>(Lcom/google/android/pano/dialog/BaseDialogFragment$2;)V

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->mEntryAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$twoPane:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->val$twoPane:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseDialogFragment$2;->mEntryAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x226

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 186
    return-void
.end method
