.class public final Lcom/google/android/location/activity/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/location/activity/bj;


# instance fields
.field private final b:Lcom/google/android/location/activity/bf;

.field private final c:Lcom/google/android/location/activity/q;

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/android/location/activity/u;

.field private final f:Lcom/google/android/location/k/b;

.field private g:Lcom/google/android/location/activity/bj;

.field private h:J

.field private i:Z

.field private j:Lcom/google/android/location/f/ax;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/location/activity/bj;

    sget-object v1, Lcom/google/android/location/f/ax;->c:Lcom/google/android/location/f/ax;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/activity/bj;-><init>(Lcom/google/android/location/f/ax;D)V

    sput-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/b/am;Lcom/google/android/location/k/b;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/location/activity/bf;

    invoke-direct {v0}, Lcom/google/android/location/activity/bf;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->b:Lcom/google/android/location/activity/bf;

    .line 50
    new-instance v0, Lcom/google/android/location/activity/q;

    invoke-direct {v0}, Lcom/google/android/location/activity/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->c:Lcom/google/android/location/activity/q;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    .line 55
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    .line 56
    iput-wide v2, p0, Lcom/google/android/location/activity/bh;->h:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/bh;->i:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->j:Lcom/google/android/location/f/ax;

    .line 59
    iput-wide v2, p0, Lcom/google/android/location/activity/bh;->k:J

    .line 68
    iput-object p2, p0, Lcom/google/android/location/activity/bh;->f:Lcom/google/android/location/k/b;

    .line 69
    new-instance v0, Lcom/google/android/location/activity/u;

    invoke-direct {v0, p1}, Lcom/google/android/location/activity/u;-><init>(Lcom/google/android/location/b/am;)V

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->e:Lcom/google/android/location/activity/u;

    .line 70
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/activity/bh;->f:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/activity/bh;->h:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x57e40

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    sget-object v3, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-eq v2, v3, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/bh;)Lcom/google/android/location/activity/bj;
    .locals 10

    .prologue
    .line 87
    if-nez p2, :cond_7

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "TravelC"

    const-string v1, "Null WiFi scan. Not enough signals to determine travel type"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    :goto_0
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "TravelC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Travel detection result AllSignals: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/activity/bh;->c:Lcom/google/android/location/activity/q;

    if-nez p1, :cond_14

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Lcom/google/android/location/activity/q;->a(Lcom/google/android/location/f/e;)Lcom/google/android/location/activity/bj;

    move-result-object v1

    .line 92
    sget-object v2, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-ne v0, v2, :cond_15

    sget-object v2, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-eq v1, v2, :cond_15

    .line 94
    :goto_3
    iget-object v2, p0, Lcom/google/android/location/activity/bh;->f:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    .line 95
    sget-object v4, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-ne v1, v4, :cond_16

    invoke-direct {p0}, Lcom/google/android/location/activity/bh;->a()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 99
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "TravelC"

    const-string v1, "Using previous result since current is unknown"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    .line 113
    :goto_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "TravelC"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Travel detection result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/activity/bh;->j:Lcom/google/android/location/f/ax;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-eq v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/activity/bh;->j:Lcom/google/android/location/f/ax;

    iget-object v4, v1, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    if-eq v0, v4, :cond_5

    .line 118
    iget-wide v4, p0, Lcom/google/android/location/activity/bh;->k:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xc350

    cmp-long v0, v4, v6

    if-lez v0, :cond_1a

    .line 119
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_4

    const-string v0, "TravelC"

    const-string v4, "State transition detected"

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_4
    iput-wide v2, p0, Lcom/google/android/location/activity/bh;->k:J

    .line 134
    :cond_5
    :goto_5
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-eq v1, v0, :cond_6

    .line 135
    iget-object v0, v1, Lcom/google/android/location/activity/bj;->a:Lcom/google/android/location/f/ax;

    iput-object v0, p0, Lcom/google/android/location/activity/bh;->j:Lcom/google/android/location/f/ax;

    .line 137
    :cond_6
    return-object v1

    .line 87
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    if-gtz v0, :cond_9

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_8

    const-string v0, "TravelC"

    const-string v1, "Empty WiFi scan. Not enough signals to determine travel type"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    goto/16 :goto_0

    :cond_9
    new-instance v1, Lcom/google/android/location/activity/bi;

    invoke-direct {v1, p2, p1}, Lcom/google/android/location/activity/bi;-><init>(Lcom/google/android/location/f/bh;Lcom/google/android/location/f/af;)V

    iget-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    iget-object v2, v1, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    iget-wide v2, v2, Lcom/google/android/location/f/bh;->a:J

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    iget-object v0, v0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    iget-wide v4, v0, Lcom/google/android/location/f/bh;->a:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd6d8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_b

    iget-object v0, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_7
    iget-object v3, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    iget-object v3, p0, Lcom/google/android/location/activity/bh;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_e

    const-string v0, "TravelC"

    const-string v1, "Not enough signals in history to determine travel type"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/google/android/location/activity/bh;->e:Lcom/google/android/location/activity/u;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t compute features for history of size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    iget-object v0, v0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    invoke-static {v0}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/f/bh;)Ljava/util/Set;

    move-result-object v4

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    iget-object v0, v0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    invoke-static {v0}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/f/bh;)Ljava/util/Set;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    iget-object v0, v0, Lcom/google/android/location/activity/bi;->a:Lcom/google/android/location/f/bh;

    invoke-static {v0}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/f/bh;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lcom/google/android/location/activity/bg;->a:Lcom/google/android/location/activity/bg;

    invoke-static {v4, v0, v6}, Lcom/google/android/location/activity/u;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    sget-object v4, Lcom/google/android/location/activity/bg;->b:Lcom/google/android/location/activity/bg;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/google/android/location/activity/bg;->c:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v6}, Lcom/google/android/location/activity/u;->a(Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    invoke-static {v5, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sget-object v4, Lcom/google/android/location/activity/bg;->d:Lcom/google/android/location/activity/bg;

    invoke-static {v5, v0, v1}, Lcom/google/android/location/activity/u;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    sget-object v4, Lcom/google/android/location/activity/bg;->e:Lcom/google/android/location/activity/bg;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/bi;

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Lcom/google/android/location/activity/bi;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    sget-object v4, Lcom/google/android/location/activity/bg;->f:Lcom/google/android/location/activity/bg;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/bi;

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Lcom/google/android/location/activity/bi;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    sget-object v4, Lcom/google/android/location/activity/bg;->g:Lcom/google/android/location/activity/bg;

    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/bi;

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Lcom/google/android/location/activity/bi;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    sget-object v4, Lcom/google/android/location/activity/bg;->h:Lcom/google/android/location/activity/bg;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/bi;

    const/4 v1, 0x2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/activity/bi;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Lcom/google/android/location/activity/bi;Z)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/android/location/activity/u;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V

    iget-object v1, p0, Lcom/google/android/location/activity/bh;->b:Lcom/google/android/location/activity/bf;

    sget-object v0, Lcom/google/android/location/activity/bg;->d:Lcom/google/android/location/activity/bg;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/android/location/activity/bg;->c:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x0

    goto :goto_8

    :cond_12
    const-wide v4, -0x3fff4504816f0069L    # -2.0913

    const-wide v6, 0x3ffffe5c91d14e3cL    # 1.9996

    sget-object v0, Lcom/google/android/location/activity/bg;->a:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fd1013a92a30553L    # 0.2657

    sget-object v0, Lcom/google/android/location/activity/bg;->b:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x409c56d5cfaacd9fL    # -0.0024

    sget-object v0, Lcom/google/android/location/activity/bg;->c:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x40158b0f27bb2fecL    # 5.3858

    sget-object v0, Lcom/google/android/location/activity/bg;->d:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x40876c8b43958106L    # -0.006

    sget-object v0, Lcom/google/android/location/activity/bg;->e:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x408353f7ced91687L    # -0.007

    sget-object v0, Lcom/google/android/location/activity/bg;->f:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x406978d4fdf3b646L    # -0.022

    sget-object v0, Lcom/google/android/location/activity/bg;->g:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, -0x40bf9db22d0e5604L    # -5.0E-4

    sget-object v0, Lcom/google/android/location/activity/bg;->h:Lcom/google/android/location/activity/bg;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/location/activity/bf;->a(Ljava/util/Map;Lcom/google/android/location/activity/bg;)D

    move-result-wide v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x4005bf0a8b145769L    # Math.E

    neg-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v4

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v0

    if-gez v0, :cond_13

    new-instance v0, Lcom/google/android/location/activity/bj;

    sget-object v1, Lcom/google/android/location/f/ax;->b:Lcom/google/android/location/f/ax;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/activity/bj;-><init>(Lcom/google/android/location/f/ax;D)V

    goto/16 :goto_0

    :cond_13
    new-instance v0, Lcom/google/android/location/activity/bj;

    sget-object v1, Lcom/google/android/location/f/ax;->a:Lcom/google/android/location/f/ax;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/activity/bj;-><init>(Lcom/google/android/location/f/ax;D)V

    goto/16 :goto_0

    .line 89
    :cond_14
    iget-object v1, p1, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    goto/16 :goto_2

    :cond_15
    move-object v1, v0

    .line 92
    goto/16 :goto_3

    .line 101
    :cond_16
    sget-object v4, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    if-ne v0, v4, :cond_18

    iget-boolean v4, p0, Lcom/google/android/location/activity/bh;->i:Z

    if-eqz v4, :cond_18

    invoke-direct {p0}, Lcom/google/android/location/activity/bh;->a()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 106
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_17

    const-string v0, "TravelC"

    const-string v1, "Using previous result since it\'s from a better provider."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    goto/16 :goto_4

    .line 109
    :cond_18
    if-ne v1, v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/location/activity/bh;->i:Z

    .line 110
    iput-object v1, p0, Lcom/google/android/location/activity/bh;->g:Lcom/google/android/location/activity/bj;

    .line 111
    iput-wide v2, p0, Lcom/google/android/location/activity/bh;->h:J

    goto/16 :goto_4

    .line 109
    :cond_19
    const/4 v0, 0x0

    goto :goto_9

    .line 130
    :cond_1a
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1b

    const-string v0, "TravelC"

    const-string v1, "Ignoring travel detection for now as a state transition just happened."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1b
    sget-object v1, Lcom/google/android/location/activity/bh;->a:Lcom/google/android/location/activity/bj;

    goto/16 :goto_5
.end method
