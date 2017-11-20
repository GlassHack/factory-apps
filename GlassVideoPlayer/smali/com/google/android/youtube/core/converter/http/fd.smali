.class final Lcom/google/android/youtube/core/converter/http/fd;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 681
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 682
    const-string v1, "scheme"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    const-string v2, "http://gdata.youtube.com/schemas/2007/mediatypes.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ed;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$MediaType;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->mediaType(Lcom/google/android/youtube/core/model/Video$MediaType;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    const-string v2, "http://gdata.youtube.com/schemas/2007/releasemediums.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 686
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ed;->f()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addReleaseMedium(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 687
    :cond_2
    const-string v2, "http://gdata.youtube.com/schemas/2007/moviegenres.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 688
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/ed;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 689
    if-eqz v1, :cond_3

    .line 690
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/o;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 692
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown movie genre code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_4
    const-string v2, "http://gdata.youtube.com/schemas/2007/showgenres.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    sget-object v1, Lcom/google/android/youtube/core/converter/http/ed;->a:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 696
    if-eqz v1, :cond_5

    .line 697
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->addGenre(Lcom/google/android/youtube/core/model/o;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 699
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown show genre code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
