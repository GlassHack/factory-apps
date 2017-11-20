.class Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->paginationComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

.field final synthetic val$contentWidth:Ljava/lang/String;

.field final synthetic val$skipCoverPage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iput-object p2, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->val$skipCoverPage:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->val$contentWidth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 140
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->val$skipCoverPage:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/html/PagedWebView;->access$302(Lcom/google/glass/html/PagedWebView;Z)Z

    .line 146
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v2, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->val$contentWidth:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->access$500(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v2, v2, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v2}, Lcom/google/glass/html/PagedWebView;->access$600(Lcom/google/glass/html/PagedWebView;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/html/PagedWebView;->access$402(Lcom/google/glass/html/PagedWebView;I)I

    .line 147
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$700(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$300(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v1}, Lcom/google/glass/html/PagedWebView;->access$400(Lcom/google/glass/html/PagedWebView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/google/glass/html/PagedWebView;->access$402(Lcom/google/glass/html/PagedWebView;I)I

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0, v3}, Lcom/google/glass/html/PagedWebView;->access$802(Lcom/google/glass/html/PagedWebView;Z)Z

    .line 155
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$900(Lcom/google/glass/html/PagedWebView;)Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/html/PagedWebView;->access$1000(Lcom/google/glass/html/PagedWebView;F)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$900(Lcom/google/glass/html/PagedWebView;)Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v1}, Lcom/google/glass/html/PagedWebView;->access$400(Lcom/google/glass/html/PagedWebView;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;->onPageCountChange(I)V

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$1;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1100(Lcom/google/glass/html/PagedWebView;)V

    goto/16 :goto_0
.end method
