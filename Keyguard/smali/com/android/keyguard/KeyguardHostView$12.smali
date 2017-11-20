.class Lcom/android/keyguard/KeyguardHostView$12;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideSecurityView(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1615
    return-void
.end method

.method public showUnlockHint()V
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2500(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2500(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSelectorView;->showUsabilityHint()V

    .line 1627
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1634
    :cond_0
    return-void
.end method
