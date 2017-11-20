.class Lcom/google/glass/widget/DynamicSizeTextView$1;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "DynamicSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/DynamicSizeTextView;->sizeTextOnBackgroundThread(ILjava/lang/CharSequence;Landroid/text/Layout$Alignment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/DynamicSizeTextView;

.field final synthetic val$alignment:Landroid/text/Layout$Alignment;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/DynamicSizeTextView;Landroid/content/Context;Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/DynamicSizeTextView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object p3, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$text:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$width:I

    iput-object p5, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$alignment:Landroid/text/Layout$Alignment;

    invoke-direct {p0, p2}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindContent(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V
    .locals 3
    .param p1, "result"    # Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-static {v0}, Lcom/google/glass/widget/DynamicSizeTextView;->access$100(Lcom/google/glass/widget/DynamicSizeTextView;)Lcom/google/glass/deferredcontent/LoadingTask;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 485
    invoke-static {}, Lcom/google/glass/widget/DynamicSizeTextView;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Failed to cancel text sizing task, ignoring result."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-static {v0, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->access$300(Lcom/google/glass/widget/DynamicSizeTextView;Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    .line 493
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView$1;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 456
    check-cast p1, Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView$1;->bindContent(Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isInMemoryTask()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;
    .locals 4
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->this$0:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$width:I

    iget-object v3, p0, Lcom/google/glass/widget/DynamicSizeTextView$1;->val$alignment:Landroid/text/Layout$Alignment;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/glass/widget/DynamicSizeTextView;->access$000(Lcom/google/glass/widget/DynamicSizeTextView;Ljava/lang/CharSequence;ILandroid/text/Layout$Alignment;Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/DynamicSizeTextView$1;->loadContent(Lcom/google/glass/util/Condition;)Lcom/google/glass/widget/DynamicSizeTextView$SizingResult;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 471
    return-void
.end method
