.class public final Lcom/google/android/location/activity/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/google/android/location/activity/q;->a:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/location/activity/q;->b:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    return-void
.end method

.method private b(Lcom/google/android/location/f/e;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    iget-wide v2, p1, Lcom/google/android/location/f/e;->e:J

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/e;

    iget-wide v4, v0, Lcom/google/android/location/f/e;->e:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd6d8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 70
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "TravelC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cell history("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") updated with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-le v0, v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 69
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/e;)Lcom/google/android/location/activity/bj;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 37
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/location/f/e;->c:Lcom/google/android/location/f/ak;

    if-nez v0, :cond_2

    .line 38
    :cond_0
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    .line 57
    :goto_0
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "TravelC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Travel detection result CellOnly: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    return-object v0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/q;->b(Lcom/google/android/location/f/e;)V

    .line 41
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    goto :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/q;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/e;

    .line 45
    iget-object v4, p1, Lcom/google/android/location/f/e;->c:Lcom/google/android/location/f/ak;

    iget-object v0, v0, Lcom/google/android/location/f/e;->c:Lcom/google/android/location/f/ak;

    invoke-static {v4, v0}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v0

    iget-object v4, p1, Lcom/google/android/location/f/e;->c:Lcom/google/android/location/f/ak;

    iget v4, v4, Lcom/google/android/location/f/ak;->f:I

    div-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v0, v4, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    move v0, v1

    .line 50
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/q;->b(Lcom/google/android/location/f/e;)V

    .line 51
    if-eqz v0, :cond_6

    .line 52
    new-instance v0, Lcom/google/android/location/activity/bj;

    sget-object v1, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/location/activity/bj;-><init>(Lcom/google/android/location/f/ax;D)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 45
    goto :goto_1

    .line 54
    :cond_6
    new-instance v0, Lcom/google/android/location/activity/bj;

    sget-object v1, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/location/activity/bj;-><init>(Lcom/google/android/location/f/ax;D)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method
