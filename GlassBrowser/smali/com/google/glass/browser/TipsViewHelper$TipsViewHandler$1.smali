.class Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TipsViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;


# direct methods
.method constructor <init>(Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler$1;->this$1:Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;

    iget-object v0, v0, Lcom/google/glass/browser/TipsViewHelper$TipsViewHandler;->this$0:Lcom/google/glass/browser/TipsViewHelper;

    invoke-static {v0}, Lcom/google/glass/browser/TipsViewHelper;->access$800(Lcom/google/glass/browser/TipsViewHelper;)Lcom/google/glass/widget/TipsView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setVisibility(I)V

    .line 201
    return-void
.end method
