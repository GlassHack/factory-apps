.class Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;
.super Ljava/lang/Object;
.source "ReadMoreHtmlActivity.java"

# interfaces
.implements Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;
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
    .line 50
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)Z
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/ReadMoreHtmlActivity;->openOptionsMenu()V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
