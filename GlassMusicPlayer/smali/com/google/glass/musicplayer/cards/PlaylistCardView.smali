.class public Lcom/google/glass/musicplayer/cards/PlaylistCardView;
.super Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;
.source "SourceFile"


# instance fields
.field private coverArtView:Landroid/widget/ImageView;

.field private final playlist:Lcom/google/glass/musicplayer/cards/Playlist;

.field private songCountView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/musicplayer/cards/Playlist;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/widget/horizontalscroll/LinearLayoutCard;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->playlist:Lcom/google/glass/musicplayer/cards/Playlist;

    .line 29
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->initialize()V

    .line 30
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 6

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/glass/musicplayer/R$layout;->playlist_card_view:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->view:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->view:Landroid/view/View;

    sget v2, Lcom/google/glass/musicplayer/R$id;->cover_art:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->coverArtView:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->view:Landroid/view/View;

    sget v2, Lcom/google/glass/musicplayer/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->titleView:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->view:Landroid/view/View;

    sget v2, Lcom/google/glass/musicplayer/R$id;->song_count:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->songCountView:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->titleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->playlist:Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-virtual {v2}, Lcom/google/glass/musicplayer/cards/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->playlist:Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Playlist;->getNumSongs()I

    move-result v0

    .line 43
    iget-object v2, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->songCountView:Landroid/widget/TextView;

    sget v3, Lcom/google/glass/musicplayer/R$string;->num_songs:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->playlist:Lcom/google/glass/musicplayer/cards/Playlist;

    invoke-virtual {v0}, Lcom/google/glass/musicplayer/cards/Playlist;->getAlbumArtUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    new-instance v3, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;

    iget-object v4, p0, Lcom/google/glass/musicplayer/cards/PlaylistCardView;->coverArtView:Landroid/widget/ImageView;

    invoke-direct {v3, v1, v2, v4}, Lcom/google/glass/deferredcontent/ImageUriLoadingTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Lcom/google/glass/deferredcontent/LoadingTask;)V

    .line 48
    return-void
.end method
