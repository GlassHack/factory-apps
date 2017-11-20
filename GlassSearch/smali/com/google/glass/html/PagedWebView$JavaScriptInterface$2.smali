.class Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->autoSizingComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView$JavaScriptInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v0, v0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView$JavaScriptInterface$2;->this$1:Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    iget-object v1, v1, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v1}, Lcom/google/glass/html/PagedWebView;->access$700(Lcom/google/glass/html/PagedWebView;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Paginator.init("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/html/PagedWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method
