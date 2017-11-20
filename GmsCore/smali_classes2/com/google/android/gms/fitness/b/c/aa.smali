.class public Lcom/google/android/gms/fitness/b/c/aa;
.super Lcom/google/android/gms/fitness/b/c/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/b/c/ag;Lcom/google/android/gms/fitness/b/b;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x1

    const-string v1, "merge_activity_segments"

    invoke-direct {p0, v0, p2, p1, v1}, Lcom/google/android/gms/fitness/b/c/aa;-><init>(ZLcom/google/android/gms/fitness/b/b;Lcom/google/android/gms/fitness/b/c/ag;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(ZLcom/google/android/gms/fitness/b/b;Lcom/google/android/gms/fitness/b/c/ag;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {v0, p2, p4}, Lcom/google/android/gms/fitness/b/c/aa;->a(ZLcom/google/android/gms/fitness/b/b;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/fitness/b/c/f;->a(Lcom/google/android/gms/fitness/b/c/ag;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/b;-><init>(Lcom/google/android/gms/fitness/b/c/f;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(ZLcom/google/android/gms/fitness/b/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/fitness/b/c/aa;->a(ZLcom/google/android/gms/fitness/b/b;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/b;-><init>(Lcom/google/android/gms/fitness/b/c/f;)V

    .line 41
    return-void
.end method

.method private static a(ZLcom/google/android/gms/fitness/b/b;Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/gms/fitness/b/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/c/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/b/c/f;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/fitness/b/c/f;->a(Z)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "overlay_user_input"

    invoke-static {v1}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "default_activity_segments"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    const-string v1, "com.google.activity.segment"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/c/f;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/b/c/f;->b(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/c/f;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;Ljava/util/List;Z)V
    .locals 9

    .prologue
    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/b/c;

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v0}, Lcom/google/android/gms/fitness/b/c;->b(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 99
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v0}, Lcom/google/android/gms/fitness/b/c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 100
    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 101
    const-string v0, "Data point has end before start: "

    invoke-static {v0, v6}, Lcom/google/android/gms/fitness/b/c/y;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/b/c;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v6}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v0

    .line 106
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 107
    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/fitness/b/c/aa;->a(Lcom/google/android/gms/fitness/b/b/w;JJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/b/u;

    .line 112
    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/b/b/w;->a(Lcom/google/android/gms/fitness/b/b/u;)V

    .line 113
    new-instance v1, Lcom/google/android/gms/fitness/b/c/g;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->c()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/b/u;->f()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/b/c/g;-><init>(JJLcom/google/android/gms/fitness/b/c;)V

    invoke-interface {p0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    :cond_3
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;JJLjava/util/SortedSet;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 60
    invoke-static {p2, p3, p4, p5}, Lcom/google/android/gms/fitness/b/c/aa;->a(JJ)Lcom/google/android/gms/fitness/b/b/w;

    move-result-object v2

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/android/gms/fitness/b/c/y;->a()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/o;

    .line 68
    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/o;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/o;->c()Lcom/google/android/gms/fitness/b/e;

    move-result-object v0

    const-string v6, "user_input"

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.google.android.gms"

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    invoke-static {p6, v2, v5, v3, v0}, Lcom/google/android/gms/fitness/b/c/aa;->a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, 0x0

    invoke-static {p6, v2, v3, v0, v1}, Lcom/google/android/gms/fitness/b/c/aa;->a(Ljava/util/SortedSet;Lcom/google/android/gms/fitness/b/b/w;Ljava/util/List;Ljava/util/List;Z)V

    .line 74
    return-void
.end method
