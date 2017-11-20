.class Lcom/google/glass/search/results/SearchPagedWebView$3;
.super Ljava/lang/Object;
.source "SearchPagedWebView.java"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/results/SearchPagedWebView;->createCardScrollModel()Lcom/google/android/glass/widget/CardScrollModel;
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
    .line 157
    iput-object p1, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()F
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->access$500(Lcom/google/glass/search/results/SearchPagedWebView;)F

    move-result v0

    return v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->access$300(Lcom/google/glass/search/results/SearchPagedWebView;)V

    .line 192
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0}, Lcom/google/glass/search/results/SearchPagedWebView;->access$400(Lcom/google/glass/search/results/SearchPagedWebView;)I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    iget v0, v0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    return v0
.end method

.method public getVerticalTug()F
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public setItem(F)V
    .locals 1
    .param p1, "i"    # F

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0, p1}, Lcom/google/glass/search/results/SearchPagedWebView;->access$200(Lcom/google/glass/search/results/SearchPagedWebView;F)V

    .line 177
    return-void
.end method

.method public setItemAndScale(FF)V
    .locals 1
    .param p1, "i"    # F
    .param p2, "s"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-virtual {v0, p2}, Lcom/google/glass/search/results/SearchPagedWebView;->updateScale(F)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-static {v0, p1}, Lcom/google/glass/search/results/SearchPagedWebView;->access$200(Lcom/google/glass/search/results/SearchPagedWebView;F)V

    .line 172
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "s"    # F

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView$3;->this$0:Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/results/SearchPagedWebView;->updateScale(F)V

    .line 166
    return-void
.end method

.method public setVerticalTug(F)V
    .locals 0
    .param p1, "tug"    # F

    .prologue
    .line 161
    return-void
.end method
