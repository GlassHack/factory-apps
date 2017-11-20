.class public Lcom/google/glass/musicplayer/cards/RadioCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private coverArtView:Landroid/widget/ImageView;

.field private final radio:Lcom/google/glass/musicplayer/cards/Radio;

.field private secondaryText:Landroid/widget/TextView;

.field private sheen:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Radio;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->radio:Lcom/google/glass/musicplayer/cards/Radio;

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/RadioCardView;->initialize()V

    .line 35
    return-void
.end method

.method private loadBitmap(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->context:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->coverArtView:Landroid/widget/ImageView;

    sget v5, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/musicplayer/cards/CoverArtLoader;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 71
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/RadioCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$layout;->radio_card_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->view:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->radio_card_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->coverArtView:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->radio_card_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->titleView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->radio_card_secondary_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->secondaryText:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->radio_card_sheen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->sheen:Landroid/widget/ImageView;

    .line 44
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->radio:Lcom/google/glass/musicplayer/cards/Radio;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Radio;->getTopLevelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->radio:Lcom/google/glass/musicplayer/cards/Radio;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Radio;->isNautilus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->secondaryText:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/musicplayer/R$string;->radio:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->radio:Lcom/google/glass/musicplayer/cards/Radio;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Radio;->getRadioType()Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    move-result-object v0

    sget-object v1, Lcom/google/glass/musicplayer/cards/Radio$RadioType;->IFL:Lcom/google/glass/musicplayer/cards/Radio$RadioType;

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->coverArtView:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->placeholder_ifl:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->sheen:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :goto_1
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->secondaryText:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/musicplayer/R$string;->instant_mix:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->radio:Lcom/google/glass/musicplayer/cards/Radio;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Radio;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/cards/RadioCardView;->loadBitmap(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/RadioCardView;->coverArtView:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
