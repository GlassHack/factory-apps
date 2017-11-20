.class Lcom/google/glass/html/PagedWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$2;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FFF)Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$2;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1300(Lcom/google/glass/html/PagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGenericScroll(FFF)Z

    move-result v0

    return v0
.end method
