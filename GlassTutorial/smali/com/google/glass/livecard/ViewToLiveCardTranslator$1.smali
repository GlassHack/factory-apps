.class Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;
.super Ljava/lang/Object;
.source "ViewToLiveCardTranslator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/livecard/ViewToLiveCardTranslator;->layoutView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;


# direct methods
.method constructor <init>(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 156
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$100(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 159
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 160
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 161
    .local v2, "measuredWidth":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 162
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 164
    .local v1, "measuredHeight":I
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 165
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v6}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v7}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 166
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$200(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->destroyDrawingCache()V

    .line 168
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$300(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v3, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v3}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "measuredHeight":I
    .end local v2    # "measuredWidth":I
    :cond_0
    return-void

    .line 170
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/livecard/ViewToLiveCardTranslator$1;->this$0:Lcom/google/glass/livecard/ViewToLiveCardTranslator;

    invoke-static {v4}, Lcom/google/glass/livecard/ViewToLiveCardTranslator;->access$000(Lcom/google/glass/livecard/ViewToLiveCardTranslator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3
.end method
