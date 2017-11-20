.class public final Lcom/google/android/location/collectionlib/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/bv;


# instance fields
.field private a:Ljava/util/HashMap;

.field private final b:Ljava/util/HashMap;

.field private c:Z

.field private final d:Lcom/google/android/location/collectionlib/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/ao;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cc;->a:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/cc;->b:Ljava/util/HashMap;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cc;->c:Z

    .line 29
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cc;->d:Lcom/google/android/location/collectionlib/ao;

    .line 30
    return-void
.end method

.method private a(JLcom/google/android/location/collectionlib/cb;[F)V
    .locals 5

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cc;->c:Z

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cc;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 129
    if-nez v0, :cond_1

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/google/android/location/collectionlib/cc;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v2, p1, v0

    .line 134
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cc;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cc;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    new-instance v1, Lcom/google/android/location/d/i;

    invoke-direct {v1, v2, v3, p4}, Lcom/google/android/location/d/i;-><init>(J[F)V

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/cc;->c:Z

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/cc;->c:Z

    .line 38
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cc;->d:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cc;->a:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(FFFF)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final a(FFFFFFIJJ)V
    .locals 4

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x6

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    const/4 v2, 0x4

    aput p5, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    invoke-direct {p0, p8, p9, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 93
    return-void
.end method

.method public final a(FFFIJJ)V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->c:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 58
    return-void
.end method

.method public final a(FIJJ)V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 110
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/telephony/CellLocation;ILjava/util/List;J)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public final a(Landroid/location/GpsStatus;J)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final a(Ljava/util/List;J)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public final a([D[D[D[D[DJ)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final a(Landroid/location/Location;J)Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public final b(FFFIJJ)V
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 68
    return-void
.end method

.method public final b(FIJJ)V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->k:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 116
    return-void
.end method

.method public final c(FFFIJJ)V
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 79
    return-void
.end method

.method public final c(FIJJ)V
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->l:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-direct {p0, p3, p4, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 122
    return-void
.end method

.method public final d(FFFIJJ)V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    invoke-direct {p0, p5, p6, v0, v1}, Lcom/google/android/location/collectionlib/cc;->a(JLcom/google/android/location/collectionlib/cb;[F)V

    .line 104
    return-void
.end method

.method public final d(FIJJ)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final e(FIJJ)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
