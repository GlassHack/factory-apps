.class Lcom/google/glass/deferredcontent/LoadingTask$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/deferredcontent/LoadingTask;->hideView(Landroid/view/View;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/deferredcontent/LoadingTask;

.field final synthetic val$shouldPreserveLayout:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/deferredcontent/LoadingTask;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/deferredcontent/LoadingTask;

    .prologue
    .line 345
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$1;, "Lcom/google/glass/deferredcontent/LoadingTask.1;"
    iput-object p1, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    iput-object p2, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->val$shouldPreserveLayout:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 348
    .local p0, "this":Lcom/google/glass/deferredcontent/LoadingTask$1;, "Lcom/google/glass/deferredcontent/LoadingTask.1;"
    iget-object v0, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->this$0:Lcom/google/glass/deferredcontent/LoadingTask;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/glass/deferredcontent/LoadingTask$1;->val$shouldPreserveLayout:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/deferredcontent/LoadingTask;->hideView(Landroid/view/View;ZZ)V

    .line 349
    return-void
.end method
