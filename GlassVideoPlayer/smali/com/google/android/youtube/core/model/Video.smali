.class public final Lcom/google/android/youtube/core/model/Video;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field public final accessControl:Ljava/util/Map;

.field public final adultContent:Z

.field public final captionTracksUri:Landroid/net/Uri;

.field public final categoryLabel:Ljava/lang/String;

.field public final categoryTerm:Ljava/lang/String;

.field public final claimed:Z

.field public final commentsUri:Landroid/net/Uri;

.field public final contentRatings:Ljava/util/List;

.field public final defaultThumbnailUri:Landroid/net/Uri;

.field public final description:Ljava/lang/String;

.field public final dislikesCount:I

.field public final duration:I

.field public final editUri:Landroid/net/Uri;

.field public final embedAllowed:Z

.field public final episode:Lcom/google/android/youtube/core/model/Video$Episode;

.field public final favoriteCount:I

.field public final hqThumbnailUri:Landroid/net/Uri;

.field public final id:Ljava/lang/String;

.field public final is3d:Z

.field public final isHd:Z

.field public final likesCount:I

.field public final liveEventUri:Landroid/net/Uri;

.field public final location:Ljava/lang/String;

.field public final moderatedAutoplay:Z

.field public final monetize:Z

.field public final monetizeExceptionCountries:Ljava/util/Set;

.field public final movie:Lcom/google/android/youtube/core/model/Video$Movie;

.field public final mqThumbnailUri:Landroid/net/Uri;

.field public final owner:Ljava/lang/String;

.field public final ownerDisplayName:Ljava/lang/String;

.field public final ownerUri:Landroid/net/Uri;

.field public final pricing:Ljava/util/List;

.field public final privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field public final pro:Lcom/google/android/youtube/core/model/p;

.field public final publishedDate:Ljava/util/Date;

.field public final rateUri:Landroid/net/Uri;

.field public final relatedUri:Landroid/net/Uri;

.field public final restrictedCountries:Ljava/util/Set;

.field public final sdThumbnailUri:Landroid/net/Uri;

.field public final showSubtitlesAlways:Z

.field public final showSubtitlesByDefault:Z

.field public final state:Lcom/google/android/youtube/core/model/Video$State;

.field public final streams:Ljava/util/Set;

.field public final synopsis:Ljava/lang/String;

.field public final tags:Ljava/lang/String;

.field public final threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field public final thumbnailUri:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final title:Ljava/lang/String;

.field public final trailer:Lcom/google/android/youtube/core/model/q;

.field public final uploadedDate:Ljava/util/Date;

.field public final viewCount:I

.field public final watchUri:Landroid/net/Uri;

.field public final where:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 736
    const-string v0, "yt:cc_default_lang=([a-zA-Z]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/p;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    const-string v1, "youTubeId can\'t be empty"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 593
    const-string v1, "streams can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    .line 594
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    .line 595
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    .line 596
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    .line 597
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    .line 598
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    .line 599
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Video;->sdThumbnailUri:Landroid/net/Uri;

    .line 600
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    .line 601
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    .line 602
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    .line 603
    iput-object p12, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    .line 604
    iput-object p13, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    .line 605
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    .line 606
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    .line 607
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    .line 608
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    .line 609
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    .line 610
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    .line 611
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    .line 612
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    .line 613
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    .line 614
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    .line 615
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    .line 616
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    .line 617
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    .line 618
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    .line 619
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->synopsis:Ljava/lang/String;

    .line 620
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 621
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    .line 622
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    .line 623
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    .line 624
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    .line 626
    const-string v1, "contentRatings can\'t be null"

    move-object/from16 v0, p34

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 625
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    .line 627
    const-string v1, "state can\'t be null"

    move-object/from16 v0, p35

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 629
    const-string v1, "restrictedCountries can\'t be null"

    move-object/from16 v0, p36

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 628
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    .line 630
    move/from16 v0, p37

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    .line 631
    move/from16 v0, p38

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    .line 632
    move/from16 v0, p40

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    .line 633
    if-nez p39, :cond_1

    .line 634
    const/4 v1, 0x0

    .line 633
    :goto_0
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    .line 636
    if-nez p44, :cond_2

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {p0, p2, v1}, Lcom/google/android/youtube/core/model/Video;->hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->isHd:Z

    .line 637
    if-eqz p26, :cond_3

    const-string v1, "yt:cc=alwayson"

    move-object/from16 v0, p26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    .line 638
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesAlways:Z

    if-nez v1, :cond_4

    .line 639
    if-eqz p26, :cond_0

    const-string v1, "yt:cc=on"

    move-object/from16 v0, p26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    .line 638
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->showSubtitlesByDefault:Z

    .line 640
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/p;

    .line 641
    move-object/from16 v0, p41

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v1, :cond_5

    move-object/from16 v1, p41

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Movie;

    :goto_4
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    .line 642
    move-object/from16 v0, p41

    instance-of v1, v0, Lcom/google/android/youtube/core/model/q;

    if-eqz v1, :cond_6

    move-object/from16 v1, p41

    check-cast v1, Lcom/google/android/youtube/core/model/q;

    :goto_5
    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/q;

    .line 643
    move-object/from16 v0, p41

    instance-of v1, v0, Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v1, :cond_7

    check-cast p41, Lcom/google/android/youtube/core/model/Video$Episode;

    :goto_6
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    .line 644
    const-string v1, "pricing can\'t be null"

    move-object/from16 v0, p42

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    .line 645
    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    .line 646
    move/from16 v0, p44

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    .line 647
    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 648
    invoke-static/range {p46 .. p46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    .line 649
    move/from16 v0, p47

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->embedAllowed:Z

    .line 650
    return-void

    .line 634
    :cond_1
    invoke-static/range {p39 .. p39}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto/16 :goto_0

    .line 636
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 637
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 639
    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    .line 641
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 642
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 643
    :cond_7
    const/16 p41, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 p20, p46

    .line 648
    goto :goto_7
.end method

.method private hasQuality(Ljava/util/Set;Lcom/google/android/youtube/core/model/Stream$Quality;)Z
    .locals 2

    .prologue
    .line 653
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 653
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 654
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-ne v0, p2, :cond_0

    .line 655
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 753
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 4

    .prologue
    .line 757
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    .line 758
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 762
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->defaultThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 763
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->hqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->sdThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 767
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->commentsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 768
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->rateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 770
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 772
    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->duration(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 773
    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 774
    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->favoriteCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 775
    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->likesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 776
    iget v1, p0, Lcom/google/android/youtube/core/model/Video;->dislikesCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->ownerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->uploadedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 781
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 783
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->synopsis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->synopsis(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->where:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 790
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->contentRatings:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 794
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 795
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 797
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->moderatedAutoplay:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 798
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->pricing:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 800
    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v2

    .line 805
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    move-object v1, v0

    .line 806
    :goto_0
    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 810
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 811
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->f:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 812
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->g:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 813
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->h:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 814
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->i:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 815
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->j:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 816
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->k:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 817
    iget-object v3, v1, Lcom/google/android/youtube/core/model/p;->l:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 818
    iget-object v1, v1, Lcom/google/android/youtube/core/model/p;->m:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 822
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 824
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 827
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Episode;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 833
    :cond_1
    :goto_2
    return-object v2

    .line 805
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/q;

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_0

    .line 808
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    goto/16 :goto_1

    .line 828
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video;->isTrailer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    sget-object v0, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    move-result-object v0

    .line 831
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/q;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/q;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_2
.end method

.method public final couldBeMusicVideo()Z
    .locals 2

    .prologue
    .line 698
    const-string v0, "Music"

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final couldHaveBranding()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 668
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Video;

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getDefaultSubtitleLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/google/android/youtube/core/model/Video;->DEFAULT_LANG_REGEX:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->tags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isCountryRestricted(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->restrictedCountries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEpisode()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->episode:Lcom/google/android/youtube/core/model/Video$Episode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLive()Z
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->liveEventUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMonetized(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 686
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 688
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video;->monetize:Z

    goto :goto_0
.end method

.method public final isMovie()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTrailer()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video;->trailer:Lcom/google/android/youtube/core/model/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video[id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
