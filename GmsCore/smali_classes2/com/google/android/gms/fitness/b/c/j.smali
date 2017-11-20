.class public final Lcom/google/android/gms/fitness/b/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/t;


# instance fields
.field private final a:Lcom/google/android/gms/fitness/b/b;

.field private final b:Z

.field private final c:Z

.field private final d:J


# direct methods
.method public constructor <init>(ZLcom/google/android/gms/fitness/b/b;J)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/j;->b:Z

    .line 55
    iput-object p2, p0, Lcom/google/android/gms/fitness/b/c/j;->a:Lcom/google/android/gms/fitness/b/b;

    .line 56
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/j;->c:Z

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/b/c/j;->d:J

    .line 58
    return-void
.end method

.method private static a(III)I
    .locals 3

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 206
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 207
    if-nez p0, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 216
    :cond_0
    :goto_0
    return p1

    :cond_1
    move p1, v0

    .line 207
    goto :goto_0

    .line 211
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 212
    if-ne p0, v1, :cond_3

    if-ne p2, v1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method private static a(ILjava/util/ListIterator;)I
    .locals 2

    .prologue
    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/b/b;

    .line 157
    iget v1, v0, Lcom/google/android/location/activity/b/b;->b:I

    if-eq v1, p0, :cond_0

    .line 158
    iget v0, v0, Lcom/google/android/location/activity/b/b;->b:I

    .line 161
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/d;JJIILcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x7

    .line 178
    cmp-long v2, p2, p4

    if-nez v2, :cond_0

    move-object p1, v1

    .line 198
    :goto_0
    return-object p1

    .line 182
    :cond_0
    if-ne p6, v0, :cond_1

    move-object p1, v1

    .line 183
    goto :goto_0

    .line 186
    :cond_1
    if-ne p6, p7, :cond_2

    if-eqz p1, :cond_2

    .line 187
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p4, p5, v0}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/p;->b()Lcom/google/android/gms/fitness/b/d;

    move-result-object p1

    .line 192
    invoke-interface {p1, p8}, Lcom/google/android/gms/fitness/b/d;->a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p2, p3, v2}, Lcom/google/android/gms/fitness/b/d;->b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p4, p5, v2}, Lcom/google/android/gms/fitness/b/d;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/d;->a()Lcom/google/android/gms/fitness/b/k;

    move-result-object v1

    packed-switch p6, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    :pswitch_1
    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/b/k;->a(I)Lcom/google/android/gms/fitness/b/k;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;
    .locals 3

    .prologue
    .line 318
    const-string v0, "com.google.activity.segment"

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "from_sample"

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/j;->b:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/c/j;->a:Lcom/google/android/gms/fitness/b/b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/b/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    .line 323
    return-object p1
.end method

.method private static a(JLjava/util/List;)Lcom/google/android/location/activity/b/g;
    .locals 6

    .prologue
    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v1

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v0

    float-to-int v0, v0

    new-instance v4, Lcom/google/android/location/activity/b/h;

    invoke-direct {v4, v1, v0}, Lcom/google/android/location/activity/b/h;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 271
    new-instance v3, Lcom/google/android/location/activity/b/g;

    new-instance v4, Lcom/google/android/location/activity/b/i;

    invoke-direct {v4, v2, v0, v1}, Lcom/google/android/location/activity/b/i;-><init>(Ljava/util/List;J)V

    invoke-direct {v3, v4}, Lcom/google/android/location/activity/b/g;-><init>(Lcom/google/android/location/activity/b/i;)V

    return-object v3
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 14

    .prologue
    .line 227
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-static {v6}, Lcom/google/android/gms/fitness/b/c/j;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 230
    const-wide/16 v0, 0x0

    .line 231
    new-instance v7, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v12, v0

    move-object v1, v2

    move-wide v2, v12

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/c;

    .line 234
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 235
    cmp-long v9, v4, v2

    if-eqz v9, :cond_2

    .line 236
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 237
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/fitness/b/c/j;->a(JLjava/util/List;)Lcom/google/android/location/activity/b/g;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    sub-long v2, v4, v2

    iget-wide v10, p0, Lcom/google/android/gms/fitness/b/c/j;->d:J

    cmp-long v2, v2, v10

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-static {v6}, Lcom/google/android/gms/fitness/b/c/j;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 246
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    move-wide v2, v4

    .line 248
    :cond_2
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    invoke-static {v2, v3, v7}, Lcom/google/android/gms/fitness/b/c/j;->a(JLjava/util/List;)Lcom/google/android/location/activity/b/g;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_4
    return-object v6
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 262
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "com.google.activity.segment"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 5

    .prologue
    .line 300
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    const-string v1, "{source_stream_id}"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/b/c/j;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 305
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
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

    .line 307
    const-string v3, "com.google.activity.sample"

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/g;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/fitness/b/c/j;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/f;->a()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 313
    goto :goto_0
.end method

.method public final a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 22

    .prologue
    .line 63
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/fitness/b/o;

    .line 65
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/o;->b()I

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface/range {p6 .. p6}, Lcom/google/android/gms/fitness/b/q;->a()Lcom/google/android/gms/fitness/b/p;

    move-result-object v2

    .line 70
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v10

    .line 71
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->a()Lcom/google/android/gms/fitness/b/f;

    move-result-object v4

    invoke-interface {v10}, Lcom/google/android/gms/fitness/b/e;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/fitness/b/c/j;->a(Lcom/google/android/gms/fitness/b/f;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/f;

    .line 73
    const/4 v4, 0x0

    .line 76
    const/4 v8, 0x7

    .line 77
    const/4 v9, 0x7

    .line 80
    new-instance v5, Lcom/google/android/location/activity/b/a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/android/location/activity/b/a;-><init>(B)V

    .line 81
    invoke-interface {v3}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/b/c/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 83
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 85
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/fitness/b/c/j;->c:Z

    invoke-virtual {v5, v3, v11}, Lcom/google/android/location/activity/b/a;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 89
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v19

    move-wide/from16 v12, p2

    move-object v3, v4

    move-wide/from16 v4, p2

    .line 90
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 91
    invoke-interface/range {v19 .. v19}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/google/android/location/activity/b/b;

    .line 93
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v14, v11, Lcom/google/android/location/activity/b/b;->a:J

    invoke-virtual {v6, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v14

    .line 96
    cmp-long v6, v14, p4

    if-lez v6, :cond_3

    .line 98
    invoke-interface/range {v19 .. v19}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-wide/from16 v6, p4

    .line 134
    :goto_3
    cmp-long v11, v4, p2

    if-ltz v11, :cond_2

    cmp-long v11, v4, p4

    if-gez v11, :cond_2

    cmp-long v11, v6, p2

    if-ltz v11, :cond_2

    .line 139
    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lcom/google/android/gms/fitness/b/c/j;->a(ILjava/util/ListIterator;)I

    move-result v11

    .line 140
    invoke-static {v9, v8, v11}, Lcom/google/android/gms/fitness/b/c/j;->a(III)I

    move-result v8

    .line 141
    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/fitness/b/c/j;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/d;JJIILcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    .line 146
    :cond_2
    invoke-interface {v2}, Lcom/google/android/gms/fitness/b/p;->d()Lcom/google/android/gms/fitness/b/o;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 103
    :cond_3
    sub-long v20, v14, v12

    .line 104
    const/4 v6, 0x6

    if-ne v8, v6, :cond_7

    const/4 v6, 0x1

    .line 105
    :goto_4
    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/j;->d:J

    cmp-long v6, v20, v6

    if-lez v6, :cond_8

    const/4 v6, 0x1

    move/from16 v16, v6

    .line 108
    :goto_5
    iget v6, v11, Lcom/google/android/location/activity/b/b;->b:I

    if-ne v6, v8, :cond_4

    if-eqz v16, :cond_6

    .line 111
    :cond_4
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/fitness/b/c/j;->d:J

    add-long/2addr v6, v12

    .line 117
    :goto_6
    cmp-long v12, v6, p2

    if-lez v12, :cond_5

    .line 118
    iget v12, v11, Lcom/google/android/location/activity/b/b;->b:I

    invoke-static {v9, v8, v12}, Lcom/google/android/gms/fitness/b/c/j;->a(III)I

    move-result v8

    .line 119
    invoke-static/range {v2 .. v10}, Lcom/google/android/gms/fitness/b/c/j;->a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/d;JJIILcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;

    move-result-object v3

    .line 122
    if-eqz v16, :cond_5

    .line 123
    const/4 v3, 0x0

    .line 127
    :cond_5
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 129
    iget v4, v11, Lcom/google/android/location/activity/b/b;->b:I

    move v9, v8

    move v8, v4

    move-wide v4, v6

    :cond_6
    move-wide v12, v14

    .line 131
    goto :goto_2

    .line 104
    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    .line 105
    :cond_8
    const/4 v6, 0x0

    move/from16 v16, v6

    goto :goto_5

    :cond_9
    move-wide v6, v14

    .line 111
    goto :goto_6

    .line 148
    :cond_a
    return-object v17

    :cond_b
    move-wide v6, v12

    goto :goto_3
.end method

.method public final b()Ljava/util/List;
    .locals 4

    .prologue
    const/16 v3, 0xe10

    const/4 v2, 0x1

    .line 328
    new-instance v0, Lcom/google/android/gms/fitness/b/s;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/s;-><init>()V

    const-string v1, "com.google.activity.sample"

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/fitness/b/c/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/b/c/k;-><init>(Lcom/google/android/gms/fitness/b/c/j;)V

    iput-object v1, v0, Lcom/google/android/gms/fitness/b/s;->b:Lcom/google/android/gms/fitness/b/l;

    iput v2, v0, Lcom/google/android/gms/fitness/b/s;->j:I

    iput v2, v0, Lcom/google/android/gms/fitness/b/s;->h:I

    iput v3, v0, Lcom/google/android/gms/fitness/b/s;->i:I

    iput v3, v0, Lcom/google/android/gms/fitness/b/s;->g:I

    iput-boolean v2, v0, Lcom/google/android/gms/fitness/b/s;->c:Z

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/b/c/j;->b:Z

    iput-boolean v1, v0, Lcom/google/android/gms/fitness/b/s;->e:Z

    iput-boolean v2, v0, Lcom/google/android/gms/fitness/b/s;->f:Z

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/s;->a()Lcom/google/android/gms/fitness/b/r;

    move-result-object v0

    .line 346
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
