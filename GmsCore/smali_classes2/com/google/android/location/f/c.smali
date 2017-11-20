.class public final Lcom/google/android/location/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private a(Lcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Z)V
    .locals 12

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    :goto_0
    array-length v1, p2

    if-ge v8, v1, :cond_6

    .line 129
    aget-object v5, p2, v8

    .line 131
    iget-wide v2, v5, Lcom/google/android/location/f/bh;->a:J

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v1, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v4

    .line 135
    :goto_1
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ao;

    .line 138
    iget-wide v6, v0, Lcom/google/android/location/f/ao;->a:J

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v10, 0x1f4

    cmp-long v4, v6, v10

    if-gez v4, :cond_0

    .line 139
    iput-object v5, v0, Lcom/google/android/location/f/ao;->c:Lcom/google/android/location/f/bh;

    .line 140
    const/4 v1, 0x1

    .line 143
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 149
    :cond_1
    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/google/android/location/f/ao;->a:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 151
    :cond_2
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_4

    const/4 v0, 0x1

    .line 153
    :goto_2
    iget-object v10, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/location/f/ao;

    if-eqz v0, :cond_5

    move-object v4, p1

    :goto_3
    const/4 v6, 0x0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ao;-><init>(JLcom/google/android/location/f/h;Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v0, v9

    goto :goto_0

    .line 151
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 153
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 157
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(JLcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V
    .locals 9

    .prologue
    .line 71
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v1, "BatchLocationData"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mergeBatchScans, now is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", wifiScans is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_3

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-eqz p4, :cond_5

    .line 79
    array-length v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 80
    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 82
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "BatchLocationData"

    const-string v1, "mergeBatchScans: singleton wifi, empty batch"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/location/f/ao;

    const/4 v2, 0x0

    aget-object v5, p4, v2

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ao;-><init>(JLcom/google/android/location/f/h;Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    :goto_1
    return-void

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "length "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_4
    invoke-direct {p0, p3, p4, p6}, Lcom/google/android/location/f/c;->a(Lcom/google/android/location/f/h;[Lcom/google/android/location/f/bh;Z)V

    goto :goto_1

    .line 96
    :cond_5
    if-eqz p3, :cond_2

    .line 97
    iget-object v0, p3, Lcom/google/android/location/f/h;->a:Lcom/google/android/location/f/g;

    iget-wide v2, v0, Lcom/google/android/location/f/g;->i:J

    .line 99
    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ao;

    iget-wide v0, v0, Lcom/google/android/location/f/ao;->a:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/f/c;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/location/f/ao;

    const/4 v5, 0x0

    move-object v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ao;-><init>(JLcom/google/android/location/f/h;Lcom/google/android/location/f/bh;Lcom/google/android/location/f/ak;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
