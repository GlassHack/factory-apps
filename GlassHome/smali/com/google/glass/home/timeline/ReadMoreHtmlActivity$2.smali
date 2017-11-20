.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->renderItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageCountChange(I)V
    .locals 5
    .param p1, "pages"    # I

    .prologue
    .line 139
    invoke-static {}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onPageCountChange: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$100(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$200(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/html/PagedWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$200(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/html/PagedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->clearView()V

    .line 144
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$100(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$2;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-static {v1}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->access$200(Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;)Lcom/google/glass/html/PagedWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 146
    :cond_0
    return-void
.end method
