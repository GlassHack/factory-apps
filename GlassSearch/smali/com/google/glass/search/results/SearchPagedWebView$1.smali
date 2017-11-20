.class Lcom/google/glass/search/results/SearchPagedWebView$1;
.super Ljava/lang/Object;
.source "SearchPagedWebView.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/SearchPagedWebView;->createGestureDetector()Lcom/google/android/glass/touchpad/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/results/SearchPagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/search/results/SearchPagedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/search/results/SearchPagedWebView$1;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcom/google/android/glass/touchpad/Gesture;

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$1;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->access$000(Lcom/google/glass/search/results/SearchPagedWebView;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$1;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->access$100(Lcom/google/glass/search/results/SearchPagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0
.end method
