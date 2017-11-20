.class Lcom/google/android/gsf/login/BaseActivity$4;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BaseActivity;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/BaseActivity;->access$000(Lcom/google/android/gsf/login/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BaseActivity;->mScrollView:Lcom/google/android/gsf/login/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/login/BottomScrollView;->pageScroll(I)Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    iget-object v0, v0, Lcom/google/android/gsf/login/BaseActivity;->mPrimaryButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/BaseActivity$4;->this$0:Lcom/google/android/gsf/login/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BaseActivity;->updateWidgetState()V

    goto :goto_0
.end method
