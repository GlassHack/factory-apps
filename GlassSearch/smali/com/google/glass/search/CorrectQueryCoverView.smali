.class public Lcom/google/glass/search/CorrectQueryCoverView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "CorrectQueryCoverView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/google/glass/search/R$layout;->correct_query_search_card:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    sget v2, Lcom/google/glass/search/R$id;->query:I

    invoke-virtual {p0, v2}, Lcom/google/glass/search/CorrectQueryCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 18
    .local v1, "queryTextView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    return-void
.end method
