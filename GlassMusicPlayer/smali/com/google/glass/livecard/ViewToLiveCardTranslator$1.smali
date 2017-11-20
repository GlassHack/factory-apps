.class Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;


# direct methods
.method constructor <init>(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$100(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 159
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 160
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 161
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 162
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 164
    iget-object v2, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v2}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 165
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v4}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 166
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 168
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$300(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v0}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    :cond_0
    return-void

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v1}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
