.class Lcom/google/glass/html/PagedWebView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$4;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$4;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-virtual {v0}, Lcom/google/glass/html/PagedWebView;->destroy()V

    .line 457
    return-void
.end method
