.class public final Lcom/google/android/location/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field private final b:Lcom/google/android/location/os/at;

.field private final c:Lcom/google/android/location/v;

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/android/location/os/at;Lcom/google/android/location/v;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/at;-><init>(Ljava/util/List;Lcom/google/android/location/os/at;Lcom/google/android/location/v;B)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/google/android/location/os/at;Lcom/google/android/location/v;B)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/location/at;->a:Ljava/util/List;

    .line 75
    iput-object p2, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    .line 76
    iput-object p3, p0, Lcom/google/android/location/at;->c:Lcom/google/android/location/v;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/at;->d:Z

    .line 78
    return-void
.end method

.method private b(Ljava/util/Calendar;J)Lcom/google/android/location/f/ai;
    .locals 14

    .prologue
    .line 191
    const/4 v7, 0x0

    .line 192
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 194
    iget-object v0, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v0

    add-long v0, v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/at;->c:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->b()Lcom/google/g/a/b/b/a;

    move-result-object v0

    if-nez v0, :cond_6

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v10, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    const/4 v1, -0x5

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v10, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 198
    :cond_2
    invoke-static {p1, v10}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v11

    .line 200
    iget-object v0, p0, Lcom/google/android/location/at;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/p/f;

    .line 201
    invoke-virtual {v2, p1}, Lcom/google/android/location/p/f;->b(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    if-eqz v11, :cond_4

    invoke-virtual {v2, v10}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/at;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/location/p/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/location/at;->c:Lcom/google/android/location/v;

    invoke-virtual {v0}, Lcom/google/android/location/v;->m()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_9

    new-instance v1, Lcom/google/android/location/aw;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/android/location/ax;->b:Lcom/google/android/location/ax;

    iget-boolean v5, p0, Lcom/google/android/location/at;->d:Z

    iget-object v0, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->t()J

    move-result-wide v8

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/aw;-><init>(Lcom/google/android/location/p/f;Ljava/util/List;Lcom/google/android/location/ax;ZLjava/util/Calendar;Ljava/util/Calendar;J)V

    .line 205
    :goto_2
    invoke-virtual {v1, p1}, Lcom/google/android/location/aw;->a(Ljava/util/Calendar;)Lcom/google/android/location/p/f;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_3

    .line 207
    iget-object v0, v1, Lcom/google/android/location/aw;->c:Lcom/google/android/location/ax;

    sget-object v1, Lcom/google/android/location/ax;->a:Lcom/google/android/location/ax;

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/google/android/location/g;->a:Lcom/google/android/location/g;

    .line 213
    :goto_3
    invoke-static {v2, v0}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 222
    :goto_4
    return-object v0

    .line 197
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v0

    goto/16 :goto_0

    .line 203
    :cond_7
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-wide v4, v2, Lcom/google/android/location/p/f;->a:J

    invoke-static {v0, v4, v5}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    new-instance v1, Ljava/util/Random;

    iget-object v4, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->t()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    xor-long/2addr v4, v8

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    new-instance v1, Lcom/google/android/location/aw;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/location/ax;->a:Lcom/google/android/location/ax;

    iget-boolean v5, p0, Lcom/google/android/location/at;->d:Z

    iget-object v0, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->t()J

    move-result-wide v8

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/aw;-><init>(Lcom/google/android/location/p/f;Ljava/util/List;Lcom/google/android/location/ax;ZLjava/util/Calendar;Ljava/util/Calendar;J)V

    goto :goto_2

    .line 207
    :cond_a
    sget-object v0, Lcom/google/android/location/g;->b:Lcom/google/android/location/g;

    goto :goto_3

    .line 222
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method final a(Ljava/util/Calendar;JZ)J
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/at;->b(Ljava/util/Calendar;J)Lcom/google/android/location/f/ai;

    move-result-object v1

    .line 138
    const/4 v0, 0x0

    .line 139
    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->add(II)V

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    const-wide/16 v4, -0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/location/at;->b(Ljava/util/Calendar;J)Lcom/google/android/location/f/ai;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 144
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 145
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 148
    :cond_0
    if-eqz p4, :cond_1

    iget-object v1, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/p/f;

    iget-wide v2, v1, Lcom/google/android/location/p/f;->a:J

    :goto_1
    invoke-static {v0, v2, v3}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    .line 150
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/at;->b:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 148
    :cond_1
    iget-object v1, v3, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/location/p/f;

    iget-wide v2, v1, Lcom/google/android/location/p/f;->b:J

    goto :goto_1

    :cond_2
    move-object v3, v1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Calendar;J)Lcom/google/android/location/au;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/location/at;->b(Ljava/util/Calendar;J)Lcom/google/android/location/f/ai;

    move-result-object v4

    .line 88
    if-eqz v4, :cond_0

    iget-object v0, v4, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/p/f;

    invoke-virtual {v0, p1}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 89
    :goto_0
    if-eqz v3, :cond_1

    iget-object v0, v4, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/g;

    move-object v1, v0

    .line 90
    :goto_1
    new-instance v5, Lcom/google/android/location/au;

    if-nez v4, :cond_2

    :goto_2
    invoke-direct {v5, v3, v1, v2}, Lcom/google/android/location/au;-><init>(ZLcom/google/android/location/g;Lcom/google/android/location/p/f;)V

    return-object v5

    .line 88
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, v4, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/p/f;

    move-object v2, v0

    goto :goto_2
.end method
