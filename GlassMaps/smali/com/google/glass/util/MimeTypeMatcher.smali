.class public Lcom/google/glass/util/MimeTypeMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public acceptsAll:Z

.field public baseTypeMatches:Ljava/util/List;

.field public fullMatches:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMatchPattern(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 35
    if-ltz v2, :cond_2

    .line 36
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_2
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 40
    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    .line 44
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-string v4, "*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iput-boolean v1, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    if-eqz v0, :cond_1

    move v2, v3

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 72
    goto :goto_0

    :cond_2
    move v1, v2

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    .line 76
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
