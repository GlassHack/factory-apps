.class public final Lcom/google/android/location/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/p/f;

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/android/location/ax;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/p/f;Ljava/util/List;Lcom/google/android/location/ax;ZLjava/util/Calendar;Ljava/util/Calendar;J)V
    .locals 13

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/location/aw;->a:Lcom/google/android/location/p/f;

    .line 85
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/location/aw;->d:J

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 87
    if-eqz p2, :cond_1

    .line 88
    sget-object v2, Lcom/google/android/location/p/f;->c:Ljava/util/Comparator;

    invoke-static {p2, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/p/f;

    .line 91
    invoke-virtual {v2, p1}, Lcom/google/android/location/p/f;->a(Lcom/google/android/location/p/f;)Lcom/google/android/location/p/f;

    move-result-object v4

    .line 92
    if-eqz v4, :cond_6

    .line 94
    if-eqz v3, :cond_6

    iget-wide v8, v4, Lcom/google/android/location/p/f;->a:J

    iget-wide v10, v3, Lcom/google/android/location/p/f;->b:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_6

    .line 95
    iget-wide v8, v3, Lcom/google/android/location/p/f;->b:J

    .line 96
    iget-wide v10, v4, Lcom/google/android/location/p/f;->b:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_0

    .line 97
    new-instance v2, Lcom/google/android/location/p/f;

    iget-wide v10, v4, Lcom/google/android/location/p/f;->b:J

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/google/android/location/p/f;-><init>(JJ)V

    .line 103
    :goto_1
    if-eqz v2, :cond_5

    .line 104
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v3, v2

    .line 107
    goto :goto_0

    .line 99
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 110
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 114
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/p/f;

    invoke-virtual {v2, p1}, Lcom/google/android/location/p/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p3, Lcom/google/android/location/ax;->a:Lcom/google/android/location/ax;

    :cond_3
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/location/aw;->c:Lcom/google/android/location/ax;

    .line 119
    if-eqz p4, :cond_4

    .line 120
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/location/aw;->a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/aw;->b:Ljava/util/List;

    .line 125
    :goto_3
    return-void

    .line 123
    :cond_4
    iput-object v3, p0, Lcom/google/android/location/aw;->b:Ljava/util/List;

    goto :goto_3

    :cond_5
    move-object v2, v3

    goto :goto_2

    :cond_6
    move-object v2, v4

    goto :goto_1
.end method

.method private static a(JJLjava/util/List;)J
    .locals 6

    .prologue
    .line 224
    .line 225
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 226
    invoke-virtual {v0, p0, p1}, Lcom/google/android/location/p/f;->c(J)J

    move-result-wide v2

    .line 227
    cmp-long v4, v2, p2

    if-gtz v4, :cond_0

    .line 228
    sub-long/2addr p2, v2

    goto :goto_0

    .line 230
    :cond_0
    iget-wide v0, v0, Lcom/google/android/location/p/f;->a:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 232
    :goto_1
    return-wide v0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;)Ljava/util/List;
    .locals 8

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    invoke-virtual {v0}, Lcom/google/android/location/p/f;->a()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 130
    :cond_0
    const-wide/16 v0, 0x2

    div-long/2addr v2, v0

    .line 131
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v1, p0, Lcom/google/android/location/aw;->a:Lcom/google/android/location/p/f;

    iget-wide v4, v1, Lcom/google/android/location/p/f;->a:J

    invoke-static {v0, v4, v5}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;J)V

    new-instance v1, Ljava/util/Random;

    iget-wide v4, p0, Lcom/google/android/location/aw;->d:J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    xor-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/location/aw;->a:Lcom/google/android/location/p/f;

    iget-wide v2, v2, Lcom/google/android/location/p/f;->a:J

    invoke-static {v2, v3, v0, v1, p3}, Lcom/google/android/location/aw;->a(JJLjava/util/List;)J

    move-result-wide v2

    .line 135
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/location/aw;->a:Lcom/google/android/location/p/f;

    invoke-virtual {v0, p2}, Lcom/google/android/location/p/f;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-static {p2}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 138
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v2, v0

    .line 146
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 148
    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/p/f;->a(J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/p/f;->b(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    new-instance v5, Lcom/google/android/location/p/f;

    iget-wide v6, v0, Lcom/google/android/location/p/f;->b:J

    invoke-direct {v5, v2, v3, v6, v7}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;)Lcom/google/android/location/p/f;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/location/aw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/p/f;

    .line 178
    invoke-virtual {v0, p1}, Lcom/google/android/location/p/f;->b(Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SensorCollectionTimeSpan [targetTimeSpan="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/aw;->a:Lcom/google/android/location/p/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTimeSpans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/aw;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTimeSpanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/aw;->c:Lcom/google/android/location/ax;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
