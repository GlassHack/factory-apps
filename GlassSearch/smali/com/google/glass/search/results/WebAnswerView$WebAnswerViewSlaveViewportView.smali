.class Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;
.super Landroid/widget/LinearLayout;
.source "WebAnswerView.java"

# interfaces
.implements Lcom/google/glass/search/results/WebAnswerCard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/results/WebAnswerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebAnswerViewSlaveViewportView"
.end annotation


# instance fields
.field private final masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

.field final synthetic this$0:Lcom/google/glass/search/results/WebAnswerView;

.field private final viewportIndex:I


# direct methods
.method public constructor <init>(Lcom/google/glass/search/results/WebAnswerView;Lcom/google/glass/search/results/WebAnswerView;I)V
    .locals 5
    .param p2, "masterAnswerView"    # Lcom/google/glass/search/results/WebAnswerView;
    .param p3, "viewportIndex"    # I

    .prologue
    .line 936
    iput-object p1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->this$0:Lcom/google/glass/search/results/WebAnswerView;

    .line 937
    invoke-static {p1}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 938
    iput-object p2, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    .line 939
    iput p3, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    .line 940
    invoke-static {p1}, Lcom/google/glass/search/results/WebAnswerView;->access$100(Lcom/google/glass/search/results/WebAnswerView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 941
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/google/glass/search/R$layout;->voice_search_web_answer_lazy:I

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 942
    sget v4, Lcom/google/glass/search/R$id;->container:I

    invoke-virtual {p0, v4}, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 943
    .local v0, "container":Landroid/widget/FrameLayout;
    iget-object v2, p2, Lcom/google/glass/search/results/WebAnswerView;->webView:Landroid/webkit/WebView;

    check-cast v2, Lcom/google/glass/search/results/ViewportHostingWebView;

    .line 944
    .local v2, "masterWebView":Lcom/google/glass/search/results/ViewportHostingWebView;
    invoke-virtual {v2, p3}, Lcom/google/glass/search/results/ViewportHostingWebView;->getViewport(I)Landroid/view/View;

    move-result-object v3

    .line 945
    .local v3, "slaveTextureView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 946
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 947
    return-void
.end method


# virtual methods
.method public dispatchSetSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 961
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchSetSelected(Z)V

    .line 962
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    invoke-static {v0, v1, p1}, Lcom/google/glass/search/results/WebAnswerView;->access$1500(Lcom/google/glass/search/results/WebAnswerView;IZ)V

    .line 963
    return-void
.end method

.method public getMasterAnswerView()Lcom/google/glass/search/results/WebAnswerView;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    return-object v0
.end method

.method public getViewportIndex()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    return v0
.end method

.method public onOptionsItemSelected(I)Z
    .locals 2
    .param p1, "menuItemId"    # I

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/google/glass/search/results/WebAnswerView;->onOptionsItemSelected(II)Z

    move-result v0

    return v0
.end method

.method public onPrepareMenu(ZLjava/util/List;)Z
    .locals 2
    .param p1, "voiceMenu"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/widget/MenuItemDescriptor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 967
    .local p2, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/widget/MenuItemDescriptor;>;"
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/glass/search/results/WebAnswerView;->onPrepareMenu(ZILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public onPromptResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/results/WebAnswerView;->onPromptResult(Ljava/lang/String;)V

    .line 978
    return-void
.end method

.method public requestMenu()Z
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->masterAnswerView:Lcom/google/glass/search/results/WebAnswerView;

    iget v1, p0, Lcom/google/glass/search/results/WebAnswerView$WebAnswerViewSlaveViewportView;->viewportIndex:I

    invoke-virtual {v0, v1}, Lcom/google/glass/search/results/WebAnswerView;->requestMenu(I)Z

    move-result v0

    return v0
.end method
