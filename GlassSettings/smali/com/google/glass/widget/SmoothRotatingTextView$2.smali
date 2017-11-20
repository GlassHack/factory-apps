.class Lcom/google/glass/widget/SmoothRotatingTextView$2;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;->clearAllMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SmoothRotatingTextView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SmoothRotatingTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/SmoothRotatingTextView;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$500()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "clearAllMessages"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$2;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$600(Lcom/google/glass/widget/SmoothRotatingTextView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    return-void
.end method
