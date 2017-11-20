.class public abstract Lcom/google/android/gms/fitness/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Lcom/google/android/gms/fitness/m/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 12

    .prologue
    .line 120
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/n;

    .line 122
    new-instance v1, Lcom/google/android/gms/fitness/data/Bucket;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, v0, Lcom/google/android/gms/fitness/a/n;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/gms/fitness/a/n;->d:Lcom/google/android/gms/fitness/data/Session;

    iget v7, v0, Lcom/google/android/gms/fitness/a/n;->c:I

    const/4 v8, 0x1

    move v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(JJLcom/google/android/gms/fitness/data/Session;III)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    return-object v10
.end method

.method protected static a(Ljava/util/List;J)Ljava/util/List;
    .locals 11

    .prologue
    .line 135
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-object p0

    .line 138
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/a/n;

    .line 141
    iget-wide v6, v0, Lcom/google/android/gms/fitness/a/n;->b:J

    iget-wide v8, v0, Lcom/google/android/gms/fitness/a/n;->a:J

    sub-long/2addr v6, v8

    cmp-long v5, v6, v2

    if-ltz v5, :cond_1

    .line 143
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, v1

    .line 146
    goto :goto_0
.end method

.method private a(Ljava/util/List;JZ)V
    .locals 4

    .prologue
    .line 186
    if-nez p4, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/fitness/a/a/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    return-void

    .line 190
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Bucket;

    .line 191
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/data/Bucket;->a(Z)V

    goto :goto_0
.end method

.method private a(J)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    iget-object v2, p0, Lcom/google/android/gms/fitness/a/a/c;->b:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/m/a;->d()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    .line 201
    const-string v2, "Cached data not old enough, using server for %tF"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 204
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(JLjava/util/List;)J
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0, p3}, Lcom/google/android/gms/fitness/a/a/c;->a(Ljava/util/List;)J

    move-result-wide v0

    .line 213
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 214
    return-wide v0
.end method

.method protected final a(Ljava/util/List;)J
    .locals 4

    .prologue
    .line 223
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/google/android/gms/fitness/a/a/c;->b:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/m/a;->a(Ljava/util/List;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method abstract a(Ljava/util/List;JJJLjava/util/List;Z)Ljava/util/List;
.end method

.method protected final a(Ljava/util/List;Ljava/util/List;IZZ)Ljava/util/List;
    .locals 16

    .prologue
    .line 70
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :goto_0
    return-object v2

    .line 75
    :cond_0
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/fitness/a/a/c;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    .line 76
    const-wide v4, 0x7fffffffffffffffL

    .line 77
    const-wide/high16 v2, -0x8000000000000000L

    .line 78
    const/4 v6, 0x2

    move/from16 v0, p3

    if-ne v0, v6, :cond_5

    .line 79
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v4

    move-wide v4, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/a/n;

    .line 80
    iget-wide v12, v2, Lcom/google/android/gms/fitness/a/n;->a:J

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 81
    iget-wide v2, v2, Lcom/google/android/gms/fitness/a/n;->b:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide v4, v2

    .line 82
    goto :goto_1

    :cond_1
    move-wide v14, v4

    move-wide v4, v6

    move-wide v6, v14

    .line 89
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataSource;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/a/a/c;->b:Lcom/google/android/gms/fitness/m/a;

    const/4 v8, -0x1

    const/4 v9, 0x1

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/fitness/m/a;->a(Lcom/google/android/gms/fitness/data/DataSource;JJIZZ)Ljava/util/List;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 97
    invoke-static {v3}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 100
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/a/l;->a(Lcom/google/android/gms/fitness/data/DataSet;Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 102
    const/4 v2, 0x0

    move v9, v2

    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    .line 103
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataSet;

    .line 104
    if-eqz p4, :cond_6

    .line 105
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/Bucket;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/fitness/a/n;

    invoke-static {v8, v2}, Lcom/google/android/gms/fitness/a/j;->a(Lcom/google/android/gms/fitness/a/n;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 102
    :goto_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3

    .line 84
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 85
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/a/n;

    iget-wide v4, v2, Lcom/google/android/gms/fitness/a/n;->a:J

    .line 86
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/a/n;

    iget-wide v6, v2, Lcom/google/android/gms/fitness/a/n;->b:J

    goto/16 :goto_2

    .line 108
    :cond_6
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/Bucket;

    invoke-static {v2}, Lcom/google/android/gms/fitness/a/j;->a(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataSet;)V

    goto :goto_4

    .line 114
    :cond_7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v11, v2, v3, v1}, Lcom/google/android/gms/fitness/a/a/c;->a(Ljava/util/List;JZ)V

    move-object v2, v11

    .line 115
    goto/16 :goto_0
.end method

.method protected final a(Ljava/util/List;Ljava/util/concurrent/TimeUnit;I)Ljava/util/List;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 157
    iget-object v3, p0, Lcom/google/android/gms/fitness/a/a/c;->b:Lcom/google/android/gms/fitness/m/a;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/m/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-static {v5, p2, p3, v0}, Lcom/google/android/gms/fitness/a/o;->a(ILjava/util/concurrent/TimeUnit;ILcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    const-string v1, "Non-default data source %s specified. Skipping cache"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 166
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected final a(JZ)Z
    .locals 1

    .prologue
    .line 177
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/a/a/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
