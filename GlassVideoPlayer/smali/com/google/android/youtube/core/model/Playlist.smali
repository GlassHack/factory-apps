.class public final Lcom/google/android/youtube/core/model/Playlist;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final author:Ljava/lang/String;

.field public final contentUri:Landroid/net/Uri;

.field public final editUri:Landroid/net/Uri;

.field public final hqThumbnailUri:Landroid/net/Uri;

.field public final id:Ljava/lang/String;

.field public final sdThumbnailUri:Landroid/net/Uri;

.field public final size:I

.field public final summary:Ljava/lang/String;

.field public final thumbnailUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;

.field public final updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "playlistId can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    .line 74
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    .line 75
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    .line 76
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    .line 77
    iput-object p9, p0, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    .line 78
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Playlist;->sdThumbnailUri:Landroid/net/Uri;

    .line 79
    iput p11, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    .line 80
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist;->buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Playlist$Builder;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->updated:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->editUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->hqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist;->sdThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 94
    iget v1, p0, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Playlist$Builder;->size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 99
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Playlist;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    check-cast p1, Lcom/google/android/youtube/core/model/Playlist;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    return-object v0
.end method
