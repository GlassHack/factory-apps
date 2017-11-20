.class public final Lcom/google/android/gms/fitness/b/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/fitness/b/b;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/c/n;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/c/n;->a:Lcom/google/android/gms/fitness/b/b;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->c:Lcom/google/android/gms/fitness/b/b;

    .line 74
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/c/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->a:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/c/n;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/google/android/gms/fitness/b/c/n;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/c/n;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/b/c/m;-><init>(Lcom/google/android/gms/fitness/b/c/n;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/m;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/m;->c:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 138
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/m;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 18

    .prologue
    .line 82
    invoke-interface/range {p6 .. p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v10

    .line 83
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v10}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/b/c/m;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 87
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v4, v2

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/o;

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v3

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/b/c;

    .line 90
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 91
    cmp-long v3, v8, p2

    if-ltz v3, :cond_1

    .line 92
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v14

    .line 98
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_2

    cmp-long v3, v14, v4

    if-gez v3, :cond_2

    .line 99
    if-nez v6, :cond_1

    .line 100
    const-string v3, "Data point out of order: "

    invoke-static {v3, v2}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    .line 101
    const/4 v2, 0x1

    move v6, v2

    goto :goto_0

    .line 105
    :cond_2
    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    .line 107
    cmp-long v3, v14, p4

    if-lez v3, :cond_3

    .line 110
    invoke-interface {v10}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    .line 131
    :goto_1
    return-object v2

    .line 114
    :cond_3
    invoke-interface {v10}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v4

    .line 115
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    .line 116
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v14, v15, v3}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    .line 117
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v8, v9, v3}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    .line 119
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/b/j;

    .line 120
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->d()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 121
    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v13

    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v3

    invoke-interface {v13, v3}, Lcom/google/android/gms/fitness/b/k;->a(F)Lcom/google/android/gms/fitness/b/k;

    goto :goto_2

    .line 122
    :cond_4
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->b()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 123
    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v13

    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v3

    invoke-interface {v13, v3}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    goto :goto_2

    .line 125
    :cond_5
    const-string v3, "Data point with no values: "

    invoke-static {v3, v2}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_2

    :cond_6
    move-wide v4, v8

    .line 128
    goto/16 :goto_0

    .line 130
    :cond_7
    invoke-interface {v10}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v7

    .line 131
    goto :goto_1
.end method

.method public final b()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v1, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/fitness/b/c/o;

    invoke-direct {v2, p0, v3, v3}, Lcom/google/android/gms/fitness/b/c/o;-><init>(Lcom/google/android/gms/fitness/b/c/m;ZB)V

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/fitness/b/c/o;

    invoke-direct {v2, p0, v4, v3}, Lcom/google/android/gms/fitness/b/c/o;-><init>(Lcom/google/android/gms/fitness/b/c/m;ZB)V

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iput-boolean v4, v1, Lcom/google/android/gms/fitness/b/s;->d:Z

    iput-boolean v4, v1, Lcom/google/android/gms/fitness/b/s;->e:Z

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-object v0
.end method
