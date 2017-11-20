.class public Lcom/google/glass/tutorial/remote/TutorialListItemView;
.super Landroid/widget/LinearLayout;
.source "TutorialListItemView.java"


# instance fields
.field private completedSummary:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private incompleteSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/glass/tutorial/Tutorial;)V
    .locals 5
    .param p1, "tutorial"    # Lcom/google/glass/tutorial/Tutorial;

    .prologue
    const/16 v4, 0x8

    .line 35
    invoke-virtual {p1}, Lcom/google/glass/tutorial/Tutorial;->isCompleted()Z

    move-result v0

    .line 37
    .local v0, "isCompleted":Z
    if-eqz v0, :cond_0

    .line 38
    iget-object v2, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->icon:Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/tutorial/R$drawable;->ic_done_on_small:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->completedSummary:Landroid/widget/TextView;

    .line 40
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->incompleteSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-virtual {p1}, Lcom/google/glass/tutorial/Tutorial;->getSummaryString()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void

    .line 42
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/tutorial/Tutorial;->getSummaryIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->incompleteSummary:Landroid/widget/TextView;

    .line 44
    .restart local v1    # "textView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->completedSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 29
    sget v0, Lcom/google/glass/tutorial/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/TutorialListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->icon:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/google/glass/tutorial/R$id;->summary_complete:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/TutorialListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->completedSummary:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/google/glass/tutorial/R$id;->summary_incomplete:I

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/remote/TutorialListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/tutorial/remote/TutorialListItemView;->incompleteSummary:Landroid/widget/TextView;

    .line 32
    return-void
.end method
