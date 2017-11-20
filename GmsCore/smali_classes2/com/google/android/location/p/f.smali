.class public final Lcom/google/android/location/p/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/google/android/location/p/g;

    invoke-direct {v0}, Lcom/google/android/location/p/g;-><init>()V

    sput-object v0, Lcom/google/android/location/p/f;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {p1, p2, v2, v2}, Lcom/google/android/location/p/h;->a(IIII)J

    move-result-wide v0

    invoke-static {p3, v2, v2, v2}, Lcom/google/android/location/p/h;->a(IIII)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/location/p/f;-><init>(JJ)V

    .line 25
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/android/location/p/f;->a:J

    .line 35
    iput-wide p3, p0, Lcom/google/android/location/p/f;->b:J

    .line 36
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid time span."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Lcom/google/android/location/p/f;)Lcom/google/android/location/p/f;
    .locals 6

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/google/android/location/p/f;->a:J

    iget-wide v2, p1, Lcom/google/android/location/p/f;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 165
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    iget-wide v4, p1, Lcom/google/android/location/p/f;->b:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 166
    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/location/p/f;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/p/f;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 137
    iget-wide v0, p1, Lcom/google/android/location/p/f;->b:J

    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/location/p/f;->a:J

    iget-wide v2, p0, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 140
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-wide v0, p1, Lcom/google/android/location/p/f;->a:J

    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 144
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    iget-wide v2, p1, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 145
    new-instance v0, Lcom/google/android/location/p/f;

    iget-wide v2, p1, Lcom/google/android/location/p/f;->b:J

    iget-wide v4, p0, Lcom/google/android/location/p/f;->b:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    iget-wide v2, p1, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 150
    new-instance v0, Lcom/google/android/location/p/f;

    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    iget-wide v4, p1, Lcom/google/android/location/p/f;->a:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v0, Lcom/google/android/location/p/f;

    iget-wide v2, p1, Lcom/google/android/location/p/f;->b:J

    iget-wide v4, p0, Lcom/google/android/location/p/f;->b:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_4
    new-instance v0, Lcom/google/android/location/p/f;

    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    iget-wide v4, p1, Lcom/google/android/location/p/f;->a:J

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/location/p/f;-><init>(JJ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 3

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Calendar;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    invoke-static {p1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/google/android/location/p/f;->b(J)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/google/android/location/p/f;->a:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/android/location/p/f;->a:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/Calendar;)Z
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/p/f;->b:J

    invoke-static {v0, v1}, Lcom/google/android/location/p/h;->a(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(J)J
    .locals 3

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/google/android/location/p/f;->a:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/location/p/f;->a()J

    move-result-wide v0

    .line 128
    :goto_0
    return-wide v0

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 126
    iget-wide v0, p0, Lcom/google/android/location/p/f;->b:J

    sub-long/2addr v0, p1

    goto :goto_0

    .line 128
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/util/Calendar;)Z
    .locals 2

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/location/p/h;->a(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/p/f;->b(J)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 174
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/android/location/p/f;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    check-cast p1, Lcom/google/android/location/p/f;

    .line 178
    iget-wide v2, p0, Lcom/google/android/location/p/f;->a:J

    iget-wide v4, p1, Lcom/google/android/location/p/f;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/location/p/f;->b:J

    iget-wide v4, p1, Lcom/google/android/location/p/f;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    const-string v0, "TimeSpan: [%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/location/p/f;->a:J

    invoke-static {v4, v5}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/location/p/f;->b:J

    invoke-static {v4, v5}, Lcom/google/android/location/p/h;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
