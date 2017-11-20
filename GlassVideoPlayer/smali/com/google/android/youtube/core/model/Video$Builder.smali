.class public final Lcom/google/android/youtube/core/model/Video$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Video$MediaType:[I


# instance fields
.field private accessControl:Ljava/util/Map;

.field private adultContent:Z

.field private availabilityEnd:Ljava/util/Date;

.field private availabilityStart:Ljava/util/Date;

.field private captionTracksUri:Landroid/net/Uri;

.field private categoryLabel:Ljava/lang/String;

.field private categoryTerm:Ljava/lang/String;

.field private claimed:Z

.field private commentsUri:Landroid/net/Uri;

.field private contentRatings:Ljava/util/List;

.field private credits:Ljava/util/Map;

.field private defaultThumbnailUri:Landroid/net/Uri;

.field private description:Ljava/lang/String;

.field private dislikesCount:I

.field private duration:I

.field private editUri:Landroid/net/Uri;

.field private embedAllowed:Z

.field private episodeNumber:Ljava/lang/String;

.field private favoriteCount:I

.field private genres:Ljava/util/List;

.field private hqThumbnailUri:Landroid/net/Uri;

.field private id:Ljava/lang/String;

.field private is3d:Z

.field private likesCount:I

.field private liveEventUri:Landroid/net/Uri;

.field private location:Ljava/lang/String;

.field private mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

.field private moderatedAutoplay:Z

.field private monetize:Z

.field private monetizeExceptionCountries:Ljava/util/Set;

.field private mqThumbnailUri:Landroid/net/Uri;

.field private owner:Ljava/lang/String;

.field private ownerDisplayName:Ljava/lang/String;

.field private ownerUri:Landroid/net/Uri;

.field private posterUri:Landroid/net/Uri;

.field private pricing:Ljava/util/List;

.field private privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

.field private publishedDate:Ljava/util/Date;

.field private rateUri:Landroid/net/Uri;

.field private relatedUri:Landroid/net/Uri;

.field private releaseDate:Ljava/util/Date;

.field private releaseMediums:Ljava/util/List;

.field private restrictedCountries:Ljava/util/Set;

.field private sdThumbnailUri:Landroid/net/Uri;

.field private seasonTitle:Ljava/lang/String;

.field private seasonUri:Landroid/net/Uri;

.field private showTitle:Ljava/lang/String;

.field private showUri:Landroid/net/Uri;

.field private state:Lcom/google/android/youtube/core/model/Video$State;

.field private streams:Ljava/util/Set;

.field private synopsis:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private trailerForUri:Landroid/net/Uri;

.field private trailersUri:Landroid/net/Uri;

.field private uploadedDate:Ljava/util/Date;

.field private viewCount:I

.field private watchUri:Landroid/net/Uri;

.field private where:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$android$youtube$core$model$Video$MediaType()[I
    .locals 3

    .prologue
    .line 845
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Video$MediaType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/model/Video$MediaType;->values()[Lcom/google/android/youtube/core/model/Video$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->EPISODE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->MOVIE:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/model/Video$MediaType;->TRAILER:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/google/android/youtube/core/model/Video$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Video$MediaType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    sget-object v0, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed:Z

    .line 845
    return-void
.end method

.method private buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;
    .locals 14

    .prologue
    .line 1020
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode;

    .line 1021
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1022
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1023
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1024
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1025
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1026
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1027
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1028
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1029
    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1030
    iget-object v10, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1031
    iget-object v11, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1032
    iget-object v12, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1033
    iget-object v13, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1020
    invoke-direct/range {v0 .. v13}, Lcom/google/android/youtube/core/model/Video$Episode;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;
    .locals 9

    .prologue
    .line 995
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie;

    .line 996
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 997
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 998
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 999
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1000
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1001
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1002
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1003
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 995
    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Video$Movie;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildTrailer()Lcom/google/android/youtube/core/model/q;
    .locals 10

    .prologue
    .line 1007
    new-instance v0, Lcom/google/android/youtube/core/model/q;

    .line 1008
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1009
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1010
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1011
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1012
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1013
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1014
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1015
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1016
    iget-object v9, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1007
    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/core/model/q;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method private buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;
    .locals 49

    .prologue
    .line 944
    new-instance v1, Lcom/google/android/youtube/core/model/Video;

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 946
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 949
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri:Landroid/net/Uri;

    .line 950
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri:Landroid/net/Uri;

    .line 951
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 952
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 953
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 954
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 955
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 958
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    move/from16 v16, v0

    .line 960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    move/from16 v17, v0

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    move/from16 v18, v0

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    move/from16 v19, v0

    .line 963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    move/from16 v20, v0

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    move-object/from16 v23, v0

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    move-object/from16 v24, v0

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->synopsis:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    move-object/from16 v30, v0

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    move-object/from16 v31, v0

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    move/from16 v34, v0

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    move-object/from16 v35, v0

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    move-object/from16 v36, v0

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    move-object/from16 v37, v0

    .line 981
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    move/from16 v38, v0

    .line 982
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    move/from16 v39, v0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    move-object/from16 v40, v0

    .line 984
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    move/from16 v41, v0

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    move-object/from16 v43, v0

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    move-object/from16 v44, v0

    .line 988
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    move/from16 v45, v0

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    move-object/from16 v46, v0

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 991
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed:Z

    move/from16 v48, v0

    move-object/from16 v42, p1

    .line 944
    invoke-direct/range {v1 .. v48}, Lcom/google/android/youtube/core/model/Video;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIILjava/lang/String;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/google/android/youtube/core/model/Video$State;Ljava/util/Set;ZZLjava/util/Set;ZLcom/google/android/youtube/core/model/p;Ljava/util/List;Landroid/net/Uri;ZLcom/google/android/youtube/core/model/Video$ThreeDSource;Ljava/lang/String;Z)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 1501
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 1502
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 1503
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1504
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1505
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri:Landroid/net/Uri;

    .line 1506
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri:Landroid/net/Uri;

    .line 1507
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 1508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 1509
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1510
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1511
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1512
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1513
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1515
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1516
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1517
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1518
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1519
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1520
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1521
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri:Landroid/net/Uri;

    .line 1522
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    .line 1523
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1524
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1525
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1526
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1527
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1528
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->synopsis:Ljava/lang/String;

    .line 1529
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1530
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1531
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1532
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1533
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1534
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1535
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1536
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1537
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1538
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1539
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1540
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1541
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1543
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$MediaType;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1544
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1545
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1546
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1547
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1548
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1549
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1550
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1551
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1552
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1553
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1554
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1555
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1556
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1557
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1559
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1560
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1561
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    .line 1562
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed:Z

    .line 1563
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1437
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1438
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1439
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1440
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1441
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1445
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1447
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1449
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1450
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1451
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1452
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1453
    iget v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1454
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1455
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1456
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1457
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1458
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1460
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1461
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1462
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->synopsis:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1463
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1464
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1465
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1466
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1467
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1468
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1469
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1470
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1471
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1472
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1473
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1474
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1475
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1477
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1478
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1479
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1480
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1481
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1482
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1484
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1485
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1486
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1487
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1488
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1489
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1490
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1491
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1493
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1494
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1495
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1496
    iget-boolean v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 1497
    return-void
.end method


# virtual methods
.method public final accessControl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1209
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    return-object p0
.end method

.method public final accessControl(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1203
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl:Ljava/util/Map;

    .line 1204
    return-object p0
.end method

.method public final addContentRating(Lcom/google/android/youtube/core/model/Rating;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1236
    const-string v0, "rating can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    return-object p0
.end method

.method public final addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 2

    .prologue
    .line 1322
    const-string v0, "role may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string v0, "name may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1328
    if-nez v0, :cond_1

    .line 1329
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1330
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    return-object p0
.end method

.method public final addGenre(Lcom/google/android/youtube/core/model/o;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1308
    const-string v0, "genre may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    return-object p0
.end method

.method public final addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1397
    const-string v0, "structure may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1402
    return-object p0
.end method

.method public final addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1294
    const-string v0, "releaseMedium may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1296
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1299
    return-object p0
.end method

.method public final addRestrictedCountry(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1250
    const-string v0, "country may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    return-object p0
.end method

.method public final addStream(Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1047
    const-string v0, "stream may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    return-object p0
.end method

.method public final adultContent(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1226
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->adultContent:Z

    .line 1227
    return-object p0
.end method

.method public final availabilityEnd(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityEnd:Ljava/util/Date;

    .line 1348
    return-object p0
.end method

.method public final availabilityStart(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->availabilityStart:Ljava/util/Date;

    .line 1343
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Video;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 916
    .line 917
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 916
    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 918
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 919
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    :goto_2
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 920
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    :goto_3
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 921
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    if-nez v0, :cond_4

    .line 922
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    .line 938
    :goto_4
    return-object v0

    .line 917
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 918
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 919
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 920
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_3

    .line 924
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    :goto_5
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 925
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    :goto_6
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 926
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    :goto_7
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 927
    invoke-static {}, Lcom/google/android/youtube/core/model/Video$Builder;->$SWITCH_TABLE$com$google$android$youtube$core$model$Video$MediaType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 938
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_4

    .line 924
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 925
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_6

    .line 926
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    .line 929
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildEpisode()Lcom/google/android/youtube/core/model/Video$Episode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_4

    .line 932
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildTrailer()Lcom/google/android/youtube/core/model/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_4

    .line 935
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildMovie()Lcom/google/android/youtube/core/model/Video$Movie;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/Video$Builder;->buildVideo(Lcom/google/android/youtube/core/model/p;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    goto :goto_4

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    return-object v0
.end method

.method public final captionTracksUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->captionTracksUri:Landroid/net/Uri;

    .line 1113
    return-object p0
.end method

.method public final categoryLabel(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryLabel:Ljava/lang/String;

    .line 1177
    return-object p0
.end method

.method public final categoryTerm(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->categoryTerm:Ljava/lang/String;

    .line 1172
    return-object p0
.end method

.method public final claimed(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->claimed:Z

    .line 1265
    return-object p0
.end method

.method public final commentsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->commentsUri:Landroid/net/Uri;

    .line 1098
    return-object p0
.end method

.method public final contentRatings(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->contentRatings:Ljava/util/List;

    .line 1232
    return-object p0
.end method

.method public final credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->credits:Ljava/util/Map;

    .line 1318
    return-object p0
.end method

.method public final defaultThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri:Landroid/net/Uri;

    .line 1068
    return-object p0
.end method

.method public final description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->description:Ljava/lang/String;

    .line 1187
    return-object p0
.end method

.method public final dislikesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1142
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->dislikesCount:I

    .line 1143
    return-object p0
.end method

.method public final duration(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1122
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->duration:I

    .line 1123
    return-object p0
.end method

.method public final editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->editUri:Landroid/net/Uri;

    .line 1093
    return-object p0
.end method

.method public final embedAllowed(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1426
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed:Z

    .line 1427
    return-object p0
.end method

.method public final episodeNumber(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->episodeNumber:Ljava/lang/String;

    .line 1383
    return-object p0
.end method

.method public final favoriteCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1132
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->favoriteCount:I

    .line 1133
    return-object p0
.end method

.method public final genres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->genres:Ljava/util/List;

    .line 1304
    return-object p0
.end method

.method public final getThumbnailUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUploadedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    return-object v0
.end method

.method public final hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 1083
    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->id:Ljava/lang/String;

    .line 1038
    return-object p0
.end method

.method public final is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1411
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->is3d:Z

    .line 1412
    return-object p0
.end method

.method public final likesCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1137
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->likesCount:I

    .line 1138
    return-object p0
.end method

.method public final liveEventUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->liveEventUri:Landroid/net/Uri;

    .line 1407
    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->location:Ljava/lang/String;

    .line 1217
    return-object p0
.end method

.method public final mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType:Lcom/google/android/youtube/core/model/Video$MediaType;

    .line 1285
    return-object p0
.end method

.method public final moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1279
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay:Z

    .line 1280
    return-object p0
.end method

.method public final monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1269
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetize:Z

    .line 1270
    return-object p0
.end method

.method public final monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries:Ljava/util/Set;

    .line 1275
    return-object p0
.end method

.method public final mqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri:Landroid/net/Uri;

    .line 1073
    return-object p0
.end method

.method public final owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->owner:Ljava/lang/String;

    .line 1148
    return-object p0
.end method

.method public final ownerDisplayName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName:Ljava/lang/String;

    .line 1422
    return-object p0
.end method

.method public final ownerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->ownerUri:Landroid/net/Uri;

    .line 1153
    return-object p0
.end method

.method public final posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1352
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri:Landroid/net/Uri;

    .line 1353
    return-object p0
.end method

.method public final pricing(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->pricing:Ljava/util/List;

    .line 1393
    return-object p0
.end method

.method public final privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    if-eq v0, v1, :cond_0

    .line 1197
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->privacy:Lcom/google/android/youtube/core/model/Video$Privacy;

    .line 1199
    :cond_0
    return-object p0
.end method

.method public final publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->publishedDate:Ljava/util/Date;

    .line 1167
    return-object p0
.end method

.method public final rateUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->rateUri:Landroid/net/Uri;

    .line 1108
    return-object p0
.end method

.method public final relatedUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->relatedUri:Landroid/net/Uri;

    .line 1103
    return-object p0
.end method

.method public final releaseDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseDate:Ljava/util/Date;

    .line 1338
    return-object p0
.end method

.method public final releaseMediums(Ljava/util/List;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->releaseMediums:Ljava/util/List;

    .line 1290
    return-object p0
.end method

.method public final restrictedCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->restrictedCountries:Ljava/util/Set;

    .line 1260
    return-object p0
.end method

.method public final sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 1088
    return-object p0
.end method

.method public final seasonTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonTitle:Ljava/lang/String;

    .line 1373
    return-object p0
.end method

.method public final seasonUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->seasonUri:Landroid/net/Uri;

    .line 1378
    return-object p0
.end method

.method public final showTitle(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showTitle:Ljava/lang/String;

    .line 1363
    return-object p0
.end method

.method public final showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->showUri:Landroid/net/Uri;

    .line 1368
    return-object p0
.end method

.method public final state(Lcom/google/android/youtube/core/model/Video$State;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 1

    .prologue
    .line 1245
    const-string v0, "state can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$State;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Video$Builder;->state:Lcom/google/android/youtube/core/model/Video$State;

    .line 1246
    return-object p0
.end method

.method public final streams(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->streams:Ljava/util/Set;

    .line 1043
    return-object p0
.end method

.method public final synopsis(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->synopsis:Ljava/lang/String;

    .line 1192
    return-object p0
.end method

.method public final tags(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->tags:Ljava/lang/String;

    .line 1182
    return-object p0
.end method

.method public final threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource:Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    .line 1417
    return-object p0
.end method

.method public final thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 1063
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->title:Ljava/lang/String;

    .line 1118
    return-object p0
.end method

.method public final trailerForUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailerForUri:Landroid/net/Uri;

    .line 1388
    return-object p0
.end method

.method public final trailersUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->trailersUri:Landroid/net/Uri;

    .line 1358
    return-object p0
.end method

.method public final uploadedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->uploadedDate:Ljava/util/Date;

    .line 1158
    return-object p0
.end method

.method public final viewCount(I)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1127
    iput p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->viewCount:I

    .line 1128
    return-object p0
.end method

.method public final watchUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->watchUri:Landroid/net/Uri;

    .line 1057
    return-object p0
.end method

.method public final where(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Video$Builder;->where:Ljava/lang/String;

    .line 1222
    return-object p0
.end method
