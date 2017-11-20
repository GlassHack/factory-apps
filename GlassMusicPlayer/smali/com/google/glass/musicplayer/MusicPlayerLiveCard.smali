.class public Lcom/google/glass/musicplayer/MusicPlayerLiveCard;
.super Lcom/google/glass/livecard/ViewToLiveCardContainer;
.source "SourceFile"


# instance fields
.field private albumCoverImageView:Landroid/widget/ImageView;

.field private currentPosition:J

.field private duration:J

.field private playStatus:Landroid/widget/ImageView;

.field private playerArtistName:Landroid/widget/TextView;

.field private playerCurrentTime:Landroid/widget/TextView;

.field private playerDuration:Landroid/widget/TextView;

.field private playerDurationLayout:Landroid/widget/LinearLayout;

.field private playerSongTitle:Landroid/widget/TextView;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private final surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/livecard/ViewToLiveCardContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard$1;

    invoke-direct {v0, p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard$1;-><init>(Lcom/google/glass/musicplayer/MusicPlayerLiveCard;)V

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 70
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/musicplayer/R$layout;->live_card_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v0, Lcom/google/glass/musicplayer/R$id;->cover_image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->albumCoverImageView:Landroid/widget/ImageView;

    .line 74
    sget v0, Lcom/google/glass/musicplayer/R$id;->song_title:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerSongTitle:Landroid/widget/TextView;

    .line 75
    sget v0, Lcom/google/glass/musicplayer/R$id;->artist_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerArtistName:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/google/glass/musicplayer/R$id;->song_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerCurrentTime:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/google/glass/musicplayer/R$id;->duration_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDurationLayout:Landroid/widget/LinearLayout;

    .line 79
    sget v0, Lcom/google/glass/musicplayer/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 80
    sget v0, Lcom/google/glass/musicplayer/R$id;->song_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDuration:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/google/glass/musicplayer/R$id;->play_status:I

    invoke-virtual {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playStatus:Landroid/widget/ImageView;

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->showOrHideProgressSlider(Z)V

    .line 86
    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 96
    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 97
    div-int/lit8 v1, v0, 0x3c

    .line 98
    rem-int/lit8 v0, v0, 0x3c

    .line 99
    const-string v2, "%2d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showOrHideProgressSlider(Z)V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDurationLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    return-void

    .line 106
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startLoadingAnimation()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDurationLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->invalidate()V

    .line 140
    return-void
.end method


# virtual methods
.method public changePlayStatusImage(I)V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playStatus:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_music_pause_small_50:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playStatus:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/musicplayer/R$drawable;->ic_play_small_50:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 196
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerArtistName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationSeconds()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 184
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionSeconds()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 190
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolderCallback()Landroid/view/SurfaceHolder$Callback;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    return-object v0
.end method

.method public updateProgressUi(JJ)V
    .locals 3

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->currentPosition:J

    .line 120
    iput-wide p3, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->duration:J

    .line 122
    iget-wide v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->currentPosition:J

    long-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->startLoadingAnimation()V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDurationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerCurrentTime:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->currentPosition:J

    invoke-direct {p0, v1, v2}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDuration:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->duration:J

    invoke-direct {p0, v1, v2}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-wide v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->currentPosition:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->duration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v0}, Lcom/google/glass/widget/SliderView;->setManualProgress(F)V

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->invalidate()V

    goto :goto_0
.end method

.method public updateUiElements([BLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->albumCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerSongTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, p4, p5}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->playerDuration:Landroid/widget/TextView;

    invoke-direct {p0, p6, p7}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iput-wide p4, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->currentPosition:J

    .line 168
    iput-wide p6, p0, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->duration:J

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/musicplayer/MusicPlayerLiveCard;->invalidate()V

    .line 171
    return-void
.end method
