.class public Lcom/google/glass/musicplayer/cards/SongCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private artistView:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private coverArtView:Landroid/widget/ImageView;

.field private final song:Lcom/google/glass/musicplayer/cards/Song;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Song;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->song:Lcom/google/glass/musicplayer/cards/Song;

    .line 31
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/SongCardView;->initialize()V

    .line 32
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 6

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/SongCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$layout;->song_card_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->view:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->song_card_cover_art:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->coverArtView:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->song_card_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->titleView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->view:Landroid/view/View;

    sget v1, Lcom/google/glass/musicplayer/R$id;->song_card_artist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->artistView:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->song:Lcom/google/glass/musicplayer/cards/Song;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Song;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->artistView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->song:Lcom/google/glass/musicplayer/cards/Song;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/musicplayer/cards/Song;->getArtistName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v0, Lcom/google/glass/musicplayer/cards/CoverArtLoader;

    iget-object v1, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v3, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->coverArtView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/SongCardView;->song:Lcom/google/glass/musicplayer/cards/Song;

    .line 44
    invoke-virtual {v4}, Lcom/google/glass/musicplayer/cards/Song;->getArtworkUrl()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/musicplayer/R$drawable;->placeholder_song:I

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/musicplayer/cards/CoverArtLoader;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 45
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    invoke-virtual {v1, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 46
    return-void
.end method
