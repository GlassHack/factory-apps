.class public abstract Lcom/google/android/location/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Map;


# instance fields
.field protected final a:Lcom/google/android/location/os/at;

.field protected b:Z

.field protected c:Lcom/google/android/location/activity/a/o;

.field protected d:Lcom/google/android/location/activity/e;

.field private f:Lcom/google/android/location/collectionlib/az;

.field private g:J

.field private final h:Lcom/google/android/location/activity/be;

.field private final i:Lcom/google/android/location/activity/a/a/b;

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    sput-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->b:Lcom/google/android/location/activity/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->c:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->d:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->g:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->i:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->a:Lcom/google/android/location/activity/a/t;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->e:Lcom/google/android/location/activity/a/t;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->f:Lcom/google/android/location/activity/a/t;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/activity/a/t;->l:Lcom/google/android/location/activity/a/t;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/be;)V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/d;->b:Z

    .line 76
    const-wide v0, 0xbebc2000L

    iput-wide v0, p0, Lcom/google/android/location/activity/d;->g:J

    .line 112
    iput-object p1, p0, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    .line 113
    iput-object p2, p0, Lcom/google/android/location/activity/d;->h:Lcom/google/android/location/activity/be;

    .line 114
    new-instance v0, Lcom/google/android/location/activity/a/z;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/location/activity/a/z;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/location/activity/d;->c:Lcom/google/android/location/activity/a/o;

    .line 115
    invoke-interface {p1}, Lcom/google/android/location/os/at;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/activity/d;->i:Lcom/google/android/location/activity/a/a/b;

    .line 116
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/a/a/b;

    invoke-direct {v0}, Lcom/google/android/location/activity/a/a/b;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/activity/d;)D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/location/activity/d;->j:D

    return-wide v0
.end method

.method static a(Ljava/util/List;)D
    .locals 11

    .prologue
    const/16 v10, 0xf

    .line 183
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 184
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityDetectionRunner"

    const-string v1, "Not enough samples were found to detect sensor rate."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    const-wide/16 v0, 0x0

    .line 197
    :goto_0
    return-wide v0

    .line 188
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    div-double v2, v0, v2

    .line 190
    new-array v4, v10, [J

    .line 191
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v10, :cond_2

    .line 192
    int-to-double v6, v1

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 193
    add-int/lit8 v0, v5, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v6, v0, Lcom/google/android/location/d/i;->a:J

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v8, v0, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v6, v8

    aput-wide v6, v4, v1

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 195
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 196
    const/4 v0, 0x7

    aget-wide v0, v4, v0

    .line 197
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_0
.end method

.method protected static a(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 202
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityDetectionRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "originalAccel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/location/activity/d;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trimmedAccel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/location/activity/d;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/location/activity/d;)Lcom/google/android/location/activity/be;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/activity/d;->h:Lcom/google/android/location/activity/be;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/activity/d;)Lcom/google/android/location/activity/a/a/b;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/activity/d;->i:Lcom/google/android/location/activity/a/a/b;

    return-object v0
.end method

.method protected static c(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .prologue
    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/s;

    .line 252
    new-instance v4, Lcom/google/android/gms/location/DetectedActivity;

    iget-object v1, v0, Lcom/google/android/location/activity/a/s;->a:Lcom/google/android/location/activity/a/t;

    sget-object v5, Lcom/google/android/location/activity/d;->e:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, v0, Lcom/google/android/location/activity/a/s;->b:I

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 256
    :cond_1
    return-object v2
.end method

.method private static e(Ljava/util/List;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "0 0"

    .line 214
    :goto_0
    return-object v0

    .line 210
    :cond_0
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v2, v0, Lcom/google/android/location/d/i;->a:J

    .line 211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v0, v0, Lcom/google/android/location/d/i;->a:J

    .line 212
    sub-long/2addr v0, v2

    .line 213
    long-to-double v2, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.2g"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Ljava/util/Map;IJJLcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
.end method

.method final a()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/google/android/location/activity/d;->b:Z

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/activity/d;->b:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/location/activity/d;->f:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/az;->b()V

    .line 173
    :cond_0
    return-void
.end method

.method final a(IJIDLcom/google/android/location/activity/a/o;Lcom/google/android/location/activity/e;Lcom/google/android/location/p/j;)V
    .locals 12

    .prologue
    .line 145
    iget-boolean v2, p0, Lcom/google/android/location/activity/d;->b:Z

    if-eqz v2, :cond_1

    .line 146
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "ActivityDetectionRunner"

    const-string v3, "Activity detection requested when already in progress. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/google/android/location/activity/d;->c:Lcom/google/android/location/activity/a/o;

    .line 150
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/google/android/location/activity/d;->d:Lcom/google/android/location/activity/e;

    .line 151
    iput-wide p2, p0, Lcom/google/android/location/activity/d;->g:J

    .line 152
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/location/activity/d;->j:D

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/location/activity/d;->b:Z

    .line 154
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 155
    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-wide/16 v6, 0x5dc

    move-object v3, p0

    move/from16 v5, p4

    move-wide v8, p2

    move-object/from16 v10, p9

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/location/activity/d;->a(Ljava/util/Map;IJJLcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/activity/d;->f:Lcom/google/android/location/collectionlib/az;

    .line 158
    iget-object v2, p0, Lcom/google/android/location/activity/d;->f:Lcom/google/android/location/collectionlib/az;

    invoke-interface {v2}, Lcom/google/android/location/collectionlib/az;->a()V

    goto :goto_0
.end method

.method final b(Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 245
    :goto_0
    return-object p1

    .line 234
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v2, v0, Lcom/google/android/location/d/i;->a:J

    .line 235
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 236
    :goto_1
    if-lez v1, :cond_1

    .line 237
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v4, v0, Lcom/google/android/location/d/i;->a:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/location/activity/d;->g:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v4, v0, Lcom/google/android/location/d/i;->a:J

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    iget-wide v6, v0, Lcom/google/android/location/d/i;->a:J

    sub-long/2addr v4, v6

    .line 241
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const-wide/32 v6, 0x3b9aca00

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    .line 242
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 245
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method protected final d(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v1, "accelEvents"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, p0, Lcom/google/android/location/activity/d;->a:Lcom/google/android/location/os/at;

    const-string v2, "com.google.android.location.internal.SAMPLED_SENSOR"

    invoke-interface {v1, v2, v0}, Lcom/google/android/location/os/at;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 296
    return-void
.end method
