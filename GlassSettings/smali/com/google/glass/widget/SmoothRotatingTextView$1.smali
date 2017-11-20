.class Lcom/google/glass/widget/SmoothRotatingTextView$1;
.super Ljava/lang/Object;
.source "SmoothRotatingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/SmoothRotatingTextView;->scheduleNextRotation()V
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
    .line 134
    iput-object p1, p0, Lcom/google/glass/widget/SmoothRotatingTextView$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/widget/SmoothRotatingTextView$1;->this$0:Lcom/google/glass/widget/SmoothRotatingTextView;

    invoke-static {v0}, Lcom/google/glass/widget/SmoothRotatingTextView;->access$400(Lcom/google/glass/widget/SmoothRotatingTextView;)V

    .line 138
    return-void
.end method
