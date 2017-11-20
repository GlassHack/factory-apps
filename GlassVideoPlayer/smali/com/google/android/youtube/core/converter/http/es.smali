.class final Lcom/google/android/youtube/core/converter/http/es;
.super Lcom/google/android/youtube/core/converter/m;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/m;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/k;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 563
    const-string v0, "action"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    const-string v0, "permission"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 566
    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->accessControl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 567
    const-string v3, "monetize"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 568
    const-string v1, "type"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    const-string v3, "country"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 572
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetizeExceptionCountries(Ljava/util/Set;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const-string v1, "allowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->monetize(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 577
    :cond_2
    const-string v3, "autoPlay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    const-string v1, "moderated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->moderatedAutoplay(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 579
    :cond_3
    const-string v3, "list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 580
    const-string v1, "allowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PUBLIC:Lcom/google/android/youtube/core/model/Video$Privacy;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->UNLISTED:Lcom/google/android/youtube/core/model/Video$Privacy;

    goto :goto_1

    .line 581
    :cond_5
    const-string v3, "embed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const-string v1, "allowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->embedAllowed(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
