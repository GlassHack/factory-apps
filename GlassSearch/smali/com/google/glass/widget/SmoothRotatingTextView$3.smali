.class Lcom/google/glass/widget/SmoothRotatingTextView$3;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;->addTextMessage(Ljava/lang/CharSequence;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

.field final synthetic val$charSequence:Ljava/lang/CharSequence;

.field final synthetic val$leftIconResource:I

.field final synthetic val$textStyle:I


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView;Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    iput-object p2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$charSequence:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$textStyle:I

    iput p4, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$leftIconResource:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 167
    invoke-static {}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Adding text: %s"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$charSequence:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$600(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/glass/widget/SmoothRotatingTextView$Text;

    iget-object v2, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$charSequence:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$textStyle:I

    iget v4, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->val$leftIconResource:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/glass/widget/SmoothRotatingTextView$Text;-><init>(Ljava/lang/CharSequence;IILcom/google/glass/widget/SmoothRotatingTextView$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$600(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$800(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    iget-object v1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$600(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$902(Lcom/google/glass/widget/SmoothRotatingTextView;Ljava/util/Iterator;)Ljava/util/Iterator;

    .line 174
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$3;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$900(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method
