.class public final Lcom/google/android/youtube/core/model/Show;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final credits:Ljava/util/Map;

.field public final description:Ljava/lang/String;

.field public final hqPosterUri:Landroid/net/Uri;

.field public final posterUri:Landroid/net/Uri;

.field public final seasonsUri:Landroid/net/Uri;

.field public final selfUri:Landroid/net/Uri;

.field public final showGenres:Ljava/util/List;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show;->title:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Show;->description:Ljava/lang/String;

    .line 42
    const-string v0, "showGenres cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show;->showGenres:Ljava/util/List;

    .line 45
    const-string v0, "selfUri cannot be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    .line 46
    const-string v0, "seasonsUri cannot be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show;->seasonsUri:Landroid/net/Uri;

    .line 47
    const-string v0, "credits cannot be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show;->credits:Ljava/util/Map;

    .line 59
    :goto_1
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Show;->posterUri:Landroid/net/Uri;

    .line 60
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Show;->hqPosterUri:Landroid/net/Uri;

    .line 61
    return-void

    .line 44
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show;->credits:Ljava/util/Map;

    goto :goto_1

    .line 52
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Show;->buildUpon()Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/youtube/core/model/Show$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Show$Builder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->showGenres:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->seasonsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->seasonsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->credits:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->posterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->hqPosterUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Show$Builder;->hqPosterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 65
    if-ne p1, p0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    .line 68
    :cond_0
    instance-of v0, p1, Lcom/google/android/youtube/core/model/Show;

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_1
    check-cast p1, Lcom/google/android/youtube/core/model/Show;

    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show[title = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string v1, "selfUri = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show;->selfUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
