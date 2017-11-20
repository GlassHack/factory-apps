.class public Lcom/google/glass/musicplayer/cards/AlbumCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private final album:Lcom/google/glass/musicplayer/cards/Album;

.field private artistView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private coverArtView:Landroid/widget/ImageView;

.field private dashView:Landroid/widget/TextView;

.field private songCountView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private yearView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Album;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/AlbumCardView;->initialize()V

    .line 35
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/AlbumCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$layout;->album_card_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->coverArtView:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->titleView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_artist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->artistView:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_song_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->songCountView:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_dash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->dashView:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->album_card_year:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->yearView:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Album;->getAlbumName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->artistView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Album;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Album;->getNumSongs()I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->songCountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->num_songs:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Album;->getYear()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->yearView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->dashView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :goto_0
    new-instance v0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->context:Landroid/content/Context;

    .line 63
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->coverArtView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->album:Lcom/google/glass/musicplayer/cards/Album;

    .line 64
    invoke-virtual {v4}, Lcom/google/glass/musicplayer/cards/Album;->getArtworkUrl()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/musicplayer/cards/CoverArtLoader;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 65
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 66
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->yearView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->yearView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/AlbumCardView;->dashView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
