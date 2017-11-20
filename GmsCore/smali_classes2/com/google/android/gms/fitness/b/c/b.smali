.class public abstract Lcom/google/android/gms/fitness/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# instance fields
.field final a:Lcom/google/android/gms/fitness/b/c/ag;

.field final b:Ljava/lang/String;

.field final c:Ljava/util/Set;

.field private final d:Lcom/google/android/gms/fitness/b/b;

.field private final e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/fitness/b/c/f;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Lcom/google/android/gms/fitness/b/c/f;)Lcom/google/android/gms/fitness/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->d:Lcom/google/android/gms/fitness/b/b;

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->b(Lcom/google/android/gms/fitness/b/c/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/b;->e:Z

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->c(Lcom/google/android/gms/fitness/b/c/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->f:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->d(Lcom/google/android/gms/fitness/b/c/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->b:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->e(Lcom/google/android/gms/fitness/b/c/f;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->c:Ljava/util/Set;

    .line 128
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/f;->f(Lcom/google/android/gms/fitness/b/c/f;)Lcom/google/android/gms/fitness/b/c/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->a:Lcom/google/android/gms/fitness/b/c/ag;

    .line 129
    return-void
.end method

.method protected static a(JJ)Lcom/google/android/gms/fitness/b/b/w;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/google/android/gms/fitness/b/b/x;->c()Lcom/google/android/gms/fitness/b/b/x;

    move-result-object v0

    .line 247
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 248
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/b/u;->b(Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 249
    return-object v0
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/b;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/b;->e:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/b;->d:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/fitness/b/b/w;JJ)Ljava/util/List;
    .locals 9

    .prologue
    .line 254
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v2

    .line 255
    invoke-interface {p0, v2}, Lcom/google/android/gms/fitness/b/b/w;->c(Lcom/google/android/gms/fitness/b/b/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 260
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {p0, v2}, Lcom/google/android/gms/fitness/b/b/w;->d(Lcom/google/android/gms/fitness/b/b/u;)Lcom/google/android/gms/fitness/b/b/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/b/w;->b()Lcom/google/android/gms/fitness/b/b/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/b/w;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    .line 276
    :cond_2
    :goto_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, p1, v6

    if-gez v1, :cond_1

    .line 267
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    goto :goto_2

    .line 270
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->e()Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, p3, v6

    if-lez v1, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/b/u;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/fitness/b/b/u;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 278
    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/b;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 8

    .prologue
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    new-instance v0, Lcom/google/android/gms/fitness/b/c/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/c/c;-><init>(Lcom/google/android/gms/fitness/b/c/b;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    new-instance v6, Ljava/util/TreeSet;

    new-instance v0, Lcom/google/android/gms/fitness/b/c/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/fitness/b/c/d;-><init>(Lcom/google/android/gms/fitness/b/c/b;)V

    invoke-direct {v6, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 154
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/b/c/b;->a(Ljava/util/List;JJLjava/util/SortedSet;)V

    .line 157
    invoke-interface {p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/b;->a(Lcom/google/android/gms/fitness/b/f;)Lcom/google/android/gms/fitness/b/f;

    .line 160
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 161
    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c/g;

    .line 162
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object v4

    .line 163
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/c/g;->c:Lcom/google/android/gms/fitness/b/c;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/c;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    .line 164
    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/g;->a:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v1}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    .line 166
    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/g;->b:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v1}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    .line 169
    iget-object v1, v0, Lcom/google/android/gms/fitness/b/c/g;->c:Lcom/google/android/gms/fitness/b/c;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/j;

    .line 170
    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v6

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v1

    invoke-interface {v6, v1}, Lcom/google/android/gms/fitness/b/k;->a(F)Lcom/google/android/gms/fitness/b/k;

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    invoke-interface {v4}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v6

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v1

    invoke-interface {v6, v1}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "Data point with no values: "

    iget-object v6, v0, Lcom/google/android/gms/fitness/b/c/g;->c:Lcom/google/android/gms/fitness/b/c;

    invoke-static {v1, v6}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_0

    .line 180
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v0
.end method

.method protected abstract a(Ljava/util/List;JJLjava/util/SortedSet;)V
.end method

.method public b()Ljava/util/List;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v1, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/c/b;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/b;->e:Z

    iput-boolean v2, v1, Lcom/google/android/gms/fitness/b/s;->e:Z

    new-instance v2, Lcom/google/android/gms/fitness/b/c/e;

    invoke-direct {v2, p0}, Lcom/google/android/gms/fitness/b/c/e;-><init>(Lcom/google/android/gms/fitness/b/c/b;)V

    iput-object v2, v1, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-object v0
.end method
