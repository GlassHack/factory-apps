.class public final Lcom/google/android/gms/fitness/b/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# static fields
.field private static final d:Ljava/util/Comparator;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/b/b;

.field private final b:Z

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/google/android/gms/fitness/b/c/i;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/b/c/h;->d:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(ZLcom/google/android/gms/fitness/b/b;J)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/h;->b:Z

    .line 31
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/h;->a:Lcom/google/android/gms/fitness/b/b;

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/b/c/h;->c:J

    .line 33
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;
    .locals 3

    .prologue
    .line 214
    const-string v0, "com.google.activity.segment"

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "from_sample"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/h;->b:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/h;->a:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    .line 220
    return-object p1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 9

    .prologue
    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    const-wide/16 v0, 0x0

    .line 134
    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    .line 137
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 138
    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    invoke-static {v7}, Lcom/google/android/gms/fitness/b/c/h;->b(Ljava/util/List;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-wide v2, v4

    .line 146
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-static {v7}, Lcom/google/android/gms/fitness/b/c/h;->b(Ljava/util/List;)Lcom/google/android/gms/fitness/b/c;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_3
    return-object v6
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;JJILcom/google/android/gms/fitness/b/e;)V
    .locals 3

    .prologue
    .line 110
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x4

    if-eq p5, v0, :cond_0

    .line 115
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    invoke-interface {v0, p6}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p4, v1}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v0

    invoke-interface {v0, p5}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Lcom/google/android/gms/fitness/b/c;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/gms/fitness/b/c/h;->d:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "com.google.activity.segment"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 196
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "{source_stream_id}"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/b/c/h;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 201
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/e;

    .line 203
    const-string v3, "com.google.activity.sample"

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/fitness/b/c/h;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 209
    goto :goto_0
.end method

.method public final a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 20

    .prologue
    .line 39
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/o;

    .line 41
    invoke-interface/range {p6 .. p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/h;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    .line 49
    const/4 v8, 0x4

    .line 51
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/fitness/b/c/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-wide/from16 v10, p2

    move-wide/from16 v4, p2

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/c;

    .line 53
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v12

    .line 54
    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v14

    .line 57
    cmp-long v6, v12, p4

    if-lez v6, :cond_1

    move-wide/from16 v6, p4

    .line 95
    :goto_2
    cmp-long v9, v4, p2

    if-ltz v9, :cond_0

    cmp-long v9, v4, p4

    if-gez v9, :cond_0

    .line 96
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/fitness/b/c/h;->a(Lcom/google/android/gms/fitness/b/p;JJILcom/google/android/gms/fitness/b/e;)V

    .line 100
    :cond_0
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    const/4 v6, 0x3

    if-ne v8, v6, :cond_2

    .line 64
    const/4 v6, 0x4

    if-eq v14, v6, :cond_a

    const/4 v6, 0x5

    if-eq v14, v6, :cond_a

    .line 66
    :cond_2
    sub-long v18, v12, v10

    .line 72
    const/4 v6, 0x3

    if-ne v8, v6, :cond_6

    const/4 v6, 0x1

    .line 73
    :goto_3
    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/h;->c:J

    cmp-long v6, v18, v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    .line 74
    :goto_4
    if-ne v14, v8, :cond_3

    if-eqz v6, :cond_5

    .line 78
    :cond_3
    cmp-long v7, v12, p2

    if-lez v7, :cond_4

    .line 83
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/h;->c:J

    add-long/2addr v6, v10

    .line 86
    :goto_5
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/fitness/b/c/h;->a(Lcom/google/android/gms/fitness/b/p;JJILcom/google/android/gms/fitness/b/e;)V

    move-wide v4, v12

    :cond_4
    move v8, v14

    :cond_5
    move-wide v10, v12

    .line 92
    goto :goto_1

    .line 72
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 73
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    move-wide v6, v12

    .line 83
    goto :goto_5

    .line 102
    :cond_9
    return-object v15

    :cond_a
    move-wide v10, v12

    goto :goto_1

    :cond_b
    move-wide v6, v10

    goto :goto_2
.end method

.method public final b()Ljava/util/List;
    .locals 4

    .prologue
    const/16 v3, 0x258

    const/4 v2, 0x1

    .line 226
    new-instance v0, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    const-string v1, "com.google.activity.sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fitness/b/m;->a:Lcom/google/android/gms/fitness/b/l;

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iput v2, v0, Lcom/google/android/gms/fitness/b/s;->j:I

    iput v2, v0, Lcom/google/android/gms/fitness/b/s;->h:I

    iput v3, v0, Lcom/google/android/gms/fitness/b/s;->i:I

    iput v3, v0, Lcom/google/android/gms/fitness/b/s;->g:I

    iput-boolean v2, v0, Lcom/google/android/gms/fitness/b/s;->c:Z

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/b/c/h;->b:Z

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/b/s;->e:Z

    iput-boolean v2, v0, Lcom/google/android/gms/fitness/b/s;->f:Z

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v0

    .line 240
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
