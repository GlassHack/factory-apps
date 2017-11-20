.class Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;
.super Ljava/lang/Object;
.source "BaseRecordVideoActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->hideInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Animation cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->onTipHidden()V

    .line 296
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    iget-object v0, v0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->this$0:Lcom/google/glass/camera/BaseRecordVideoActivity;

    invoke-static {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Animation completed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable$1;->this$1:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->onTipHidden()V

    .line 290
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 299
    return-void
.end method
