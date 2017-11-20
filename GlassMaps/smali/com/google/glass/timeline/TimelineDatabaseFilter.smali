.class public Lcom/google/glass/timeline/TimelineDatabaseFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributionType:Ljava/lang/Integer;

.field private entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAnd(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    return-void
.end method

.method private appendAttributionType(Ljava/lang/StringBuilder;Z)V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->attributionType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->addAnd(Ljava/lang/StringBuilder;Z)V

    .line 82
    const-string v0, "attribution_type=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->attributionType:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendEntityQuery(Ljava/lang/StringBuilder;Z)V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v0}, Lcom/google/glass/entity/EntityUtils;->getIds(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)[Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->addAnd(Ljava/lang/StringBuilder;Z)V

    .line 55
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "_id IN (SELECT timelineId FROM entity WHERE entityId IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 60
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 62
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_3
    const-string v0, ")))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSourceQuery(Ljava/lang/StringBuilder;Z)V
    .locals 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->addAnd(Ljava/lang/StringBuilder;Z)V

    .line 74
    const-string v0, "source=\""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->source:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public constructSqlQuery(Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-direct {p0, v3, p1}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->appendEntityQuery(Ljava/lang/StringBuilder;Z)V

    .line 94
    if-nez p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->appendSourceQuery(Ljava/lang/StringBuilder;Z)V

    .line 95
    if-nez p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/google/glass/timeline/TimelineDatabaseFilter;->appendAttributionType(Ljava/lang/StringBuilder;Z)V

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    .line 94
    goto :goto_0
.end method

.method public setAttributionType(I)Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .locals 1

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->attributionType:Ljava/lang/Integer;

    .line 39
    return-object p0
.end method

.method public setEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 23
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineDatabaseFilter;->source:Ljava/lang/String;

    .line 31
    return-object p0
.end method
