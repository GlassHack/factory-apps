.class public final Lcom/google/android/location/activity/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/location/b/am;


# direct methods
.method public constructor <init>(Lcom/google/android/location/b/am;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/location/activity/u;->a:Lcom/google/android/location/b/am;

    .line 40
    return-void
.end method

.method private static a(Lcom/google/android/location/activity/bi;Z)Lcom/google/android/location/f/ak;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/google/android/location/activity/bi;->b:Lcom/google/android/location/f/af;

    .line 87
    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, v1, Lcom/google/android/location/f/af;->c:Lcom/google/android/location/f/e;

    .line 91
    :goto_1
    if-eqz v1, :cond_0

    .line 94
    iget-object v0, v1, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, v1, Lcom/google/android/location/f/af;->b:Lcom/google/android/location/f/be;

    goto :goto_1
.end method

.method static a(Lcom/google/android/location/activity/bi;Lcom/google/android/location/activity/bi;Z)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 75
    invoke-static {p0, p2}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Z)Lcom/google/android/location/f/ak;

    move-result-object v0

    .line 76
    invoke-static {p1, p2}, Lcom/google/android/location/activity/u;->a(Lcom/google/android/location/activity/bi;Z)Lcom/google/android/location/f/ak;

    move-result-object v1

    .line 77
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/location/h/d;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/f/ak;)I

    move-result v1

    .line 81
    if-eqz p2, :cond_2

    const/16 v0, 0x1388

    .line 82
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    const/16 v0, 0x3e8

    goto :goto_1
.end method

.method static a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Double;
    .locals 4

    .prologue
    .line 144
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 145
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/google/android/location/f/bh;)Ljava/util/Set;
    .locals 4

    .prologue
    .line 152
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 153
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/location/f/bh;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v1
.end method

.method static a(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 162
    return-object v0
.end method

.method static a(Ljava/util/Map;Lcom/google/android/location/activity/bg;Ljava/lang/Double;)V
    .locals 0

    .prologue
    .line 115
    if-eqz p2, :cond_0

    .line 116
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Set;)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 127
    iget-object v3, p0, Lcom/google/android/location/activity/u;->a:Lcom/google/android/location/b/am;

    invoke-virtual {v3, v0}, Lcom/google/android/location/b/am;->a(Ljava/lang/Object;)Lcom/google/android/location/b/a;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    iget-object v0, v0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/f/ay;

    iget v0, v0, Lcom/google/android/location/f/ay;->f:I

    div-int/lit16 v0, v0, 0x3e8

    .line 130
    if-eqz v1, :cond_0

    int-to-double v4, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 131
    :cond_0
    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
