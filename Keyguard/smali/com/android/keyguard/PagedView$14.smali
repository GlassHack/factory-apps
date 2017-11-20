.class Lcom/android/keyguard/PagedView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .locals 0

    .prologue
    .line 2721
    iput-object p1, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 2725
    iget-object v0, p0, Lcom/android/keyguard/PagedView$14;->this$0:Lcom/android/keyguard/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$1202(Lcom/android/keyguard/PagedView;Z)Z

    .line 2726
    return-void
.end method
