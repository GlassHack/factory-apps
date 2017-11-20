.class public final Lcom/google/android/youtube/core/model/Season;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final clipsUri:Landroid/net/Uri;

.field public final credits:Ljava/util/Map;

.field public final description:Ljava/lang/String;

.field public final episodesUri:Landroid/net/Uri;

.field public final finalEpisodeCount:Ljava/lang/Integer;

.field public final firstReleased:Ljava/util/Date;

.field public final hqPosterUri:Landroid/net/Uri;

.field public final posterUri:Landroid/net/Uri;

.field public final selfUri:Landroid/net/Uri;

.field public final showUri:Landroid/net/Uri;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Map;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season;->title:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Season;->description:Ljava/lang/String;

    .line 46
    const-string v0, "showUri cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season;->showUri:Landroid/net/Uri;

    .line 47
    const-string v0, "selfUri cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    .line 48
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Season;->clipsUri:Landroid/net/Uri;

    .line 49
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Season;->episodesUri:Landroid/net/Uri;

    .line 50
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Season;->finalEpisodeCount:Ljava/lang/Integer;

    .line 51
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Season;->firstReleased:Ljava/util/Date;

    .line 52
    const-string v0, "credits cannot be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season;->credits:Ljava/util/Map;

    .line 64
    :goto_0
    iput-object p10, p0, Lcom/google/android/youtube/core/model/Season;->posterUri:Landroid/net/Uri;

    .line 65
    iput-object p11, p0, Lcom/google/android/youtube/core/model/Season;->hqPosterUri:Landroid/net/Uri;

    .line 66
    return-void

    .line 56
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-interface {p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season;->credits:Ljava/util/Map;

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Season;->buildUpon()Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/youtube/core/model/Season$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Season$Builder;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->showUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->clipsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->clipsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->episodesUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->episodesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->finalEpisodeCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->finalEpisodeCount(Ljava/lang/Integer;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->firstReleased:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->firstReleased(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->credits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->posterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->hqPosterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Season$Builder;->hqPosterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 70
    if-ne p1, p0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    .line 73
    :cond_0
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Season;

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Lcom/google/android/youtube/core/model/Season;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Season[title = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    const-string v1, "selfUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string v1, "showUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season;->showUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
