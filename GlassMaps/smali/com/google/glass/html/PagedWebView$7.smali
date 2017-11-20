.class Lcom/google/glass/html/PagedWebView$7;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$7;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 582
    invoke-static {}, Lcom/google/glass/html/PagedWebView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/html/PagedWebView$7;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v4}, Lcom/google/glass/html/PagedWebView;->access$000(Lcom/google/glass/html/PagedWebView;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    return-void
.end method
