.class public Lcom/google/glass/musicplayer/cards/CategoryCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private final category:Lcom/google/glass/musicplayer/cards/Category;

.field private categoryNameView:Landroid/widget/TextView;

.field private iconView:Landroid/widget/ImageView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Category;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->category:Lcom/google/glass/musicplayer/cards/Category;

    .line 27
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/CategoryCardView;->initialize()V

    .line 28
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/CategoryCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/CategoryCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/glass/musicplayer/R$layout;->category_card_view:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->view:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->view:Landroid/view/View;

    sget v2, Lcom/google/glass/musicplayer/R$id;->category_card_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->iconView:Landroid/widget/ImageView;

    .line 35
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->view:Landroid/view/View;

    sget v2, Lcom/google/glass/musicplayer/R$id;->category_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->categoryNameView:Landroid/widget/TextView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->categoryNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->category:Lcom/google/glass/musicplayer/cards/Category;

    invoke-virtual {v2, v1}, Lcom/google/glass/musicplayer/cards/Category;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/CategoryCardView;->category:Lcom/google/glass/musicplayer/cards/Category;

    invoke-virtual {v2, v1}, Lcom/google/glass/musicplayer/cards/Category;->getCategoryIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    return-void
.end method
