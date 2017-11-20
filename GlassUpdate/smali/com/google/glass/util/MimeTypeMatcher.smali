.class public Lcom/google/glass/util/MimeTypeMatcher;
.super Ljava/lang/Object;
.source "MimeTypeMatcher.java"


# instance fields
.field public acceptsAll:Z

.field public baseTypeMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fullMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v4

    .line 34
    :cond_1
    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 35
    .local v1, "semiColonIndex":I
    if-ltz v1, :cond_2

    .line 36
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_2
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 40
    .local v2, "slashIndex":I
    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_0

    .line 44
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "baseType":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "subType":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 47
    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    iput-boolean v5, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    move v4, v5

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 56
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 57
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget-boolean v1, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 79
    :goto_0
    return v1

    .line 68
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 76
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    .line 79
    goto :goto_0
.end method
