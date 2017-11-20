.class public Lcom/google/glass/musicplayer/cards/ArtistCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private albumCountView:Landroid/widget/TextView;

.field private final artist:Lcom/google/glass/musicplayer/cards/Artist;

.field private artistView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private coverArtView:Landroid/widget/ImageView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Artist;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artist:Lcom/google/glass/musicplayer/cards/Artist;

    .line 33
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/ArtistCardView;->initialize()V

    .line 34
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/ArtistCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$layout;->artist_card_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->view:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->artist_card_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->coverArtView:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->artist_card_artist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artistView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->artist_card_album_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->albumCountView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artistView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artist:Lcom/google/glass/musicplayer/cards/Artist;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Artist;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artist:Lcom/google/glass/musicplayer/cards/Artist;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Artist;->getNumAlbums()I

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->albumCountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/musicplayer/R$string;->num_albums:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v0, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->coverArtView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->context:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->artist:Lcom/google/glass/musicplayer/cards/Artist;

    .line 48
    invoke-virtual {v4}, Lcom/google/glass/musicplayer/cards/Artist;->getArtworkUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/musicplayer/cards/ArtistCardView;->coverArtView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/deferredcontent/ImageProxyBitmapLoadingTask$SimpleImageProxyBitmapLoadingTask;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;III)V

    .line 51
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 52
    return-void
.end method
