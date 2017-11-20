.class Lcom/google/glass/html/PagedWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$1;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    if-ne p1, v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$1;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1200(Lcom/google/glass/html/PagedWebView;)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$1;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1300(Lcom/google/glass/html/PagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0
.end method
