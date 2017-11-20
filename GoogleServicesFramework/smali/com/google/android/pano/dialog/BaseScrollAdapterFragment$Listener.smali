.class Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;
.super Ljava/lang/Object;
.source "BaseScrollAdapterFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFadingOut:Z

.field final synthetic this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)V
    .locals 0
    .param p2, "fadingOut"    # Z

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean p2, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->mFadingOut:Z

    .line 134
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->mCanceled:Z

    .line 153
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->mFadingOut:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$002(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)Z

    .line 148
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 157
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->mFadingOut:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment$Listener;->this$0:Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;->access$002(Lcom/google/android/pano/dialog/BaseScrollAdapterFragment;Z)Z

    .line 141
    :cond_0
    return-void
.end method
