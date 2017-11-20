.class Lcom/google/glass/html/PagedWebView$2;
.super Ljava/lang/Object;
.source "PagedWebView.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/html/PagedWebView;->setupGestureDetector(Landroid/content/Context;)V
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
    .line 326
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$2;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(FFF)Z
    .locals 1
    .param p1, "displacement"    # F
    .param p2, "delta"    # F
    .param p3, "velocity"    # F

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$2;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1300(Lcom/google/glass/html/PagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGenericScroll(FFF)Z

    move-result v0

    return v0
.end method
