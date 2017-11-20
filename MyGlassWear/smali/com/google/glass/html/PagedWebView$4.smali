.class Lcom/google/glass/html/PagedWebView$4;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/html/PagedWebView;

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
