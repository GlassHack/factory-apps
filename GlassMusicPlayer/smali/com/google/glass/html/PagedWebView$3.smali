.class Lcom/google/glass/html/PagedWebView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollModel;


# instance fields
.field final synthetic this$0:Lcom/google/glass/html/PagedWebView;


# direct methods
.method constructor <init>(Lcom/google/glass/html/PagedWebView;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()F
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1600(Lcom/google/glass/html/PagedWebView;)F

    move-result v0

    return v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$400(Lcom/google/glass/html/PagedWebView;)I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0}, Lcom/google/glass/html/PagedWebView;->access$1500(Lcom/google/glass/html/PagedWebView;)F

    move-result v0

    return v0
.end method

.method public getVerticalTug()F
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public setItem(F)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0, p1}, Lcom/google/glass/html/PagedWebView;->access$1000(Lcom/google/glass/html/PagedWebView;F)V

    .line 391
    return-void
.end method

.method public setItemAndScale(FF)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0, p2}, Lcom/google/glass/html/PagedWebView;->access$1400(Lcom/google/glass/html/PagedWebView;F)V

    .line 385
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0, p1}, Lcom/google/glass/html/PagedWebView;->access$1000(Lcom/google/glass/html/PagedWebView;F)V

    .line 386
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView$3;->this$0:Lcom/google/glass/html/PagedWebView;

    invoke-static {v0, p1}, Lcom/google/glass/html/PagedWebView;->access$1400(Lcom/google/glass/html/PagedWebView;F)V

    .line 380
    return-void
.end method

.method public setVerticalTug(F)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method
