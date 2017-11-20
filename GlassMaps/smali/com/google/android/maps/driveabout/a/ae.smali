.class public final Lcom/google/android/maps/driveabout/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J

.field private d:J

.field private e:J

.field private final f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;IJJJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ae;->a:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/google/android/maps/driveabout/a/ae;->b:I

    .line 98
    iput-wide p3, p0, Lcom/google/android/maps/driveabout/a/ae;->c:J

    .line 99
    iput-wide p5, p0, Lcom/google/android/maps/driveabout/a/ae;->d:J

    .line 100
    iput-wide p7, p0, Lcom/google/android/maps/driveabout/a/ae;->e:J

    .line 101
    iput-object p9, p0, Lcom/google/android/maps/driveabout/a/ae;->f:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/a/ae;
    .locals 10

    .prologue
    const/16 v9, 0x10

    .line 105
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 106
    array-length v0, v7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 107
    const-string v1, "CannedSpeechManager"

    const-string v2, "Unable to parse voice bundle description: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 115
    :goto_1
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/a/ae;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget-object v2, v7, v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    .line 113
    invoke-static {v3, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const/4 v5, 0x3

    aget-object v5, v7, v5

    .line 114
    invoke-static {v5, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    const/4 v8, 0x4

    aget-object v7, v7, v8

    .line 115
    invoke-static {v7, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/a/ae;-><init>(Ljava/lang/String;IJJJLjava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Locale;IJLjava/lang/String;)Lcom/google/android/maps/driveabout/a/ae;
    .locals 10

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 122
    new-instance v0, Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v7, v5

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/a/ae;-><init>(Ljava/lang/String;IJJJLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/a/ae;->c:J

    return-wide v0
.end method

.method public final c()Z
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/a/ae;->e:J

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 6

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/a/ae;->d:J

    const-wide v4, 0x9a7ec800L

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/io/File;
    .locals 8

    .prologue
    .line 157
    const-string v0, "."

    .line 158
    iget v1, p0, Lcom/google/android/maps/driveabout/a/ae;->b:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ae;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ae;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/a/ae;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 160
    :pswitch_0
    const-string v0, ".i."

    goto :goto_0

    .line 163
    :pswitch_1
    const-string v0, ".y."

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f()Ljava/io/File;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/a/ae;->e()Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/a/ae;->b:I

    invoke-static {v2}, Lcom/google/android/maps/driveabout/a/ad;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/a/ae;->d:J

    .line 176
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/a/ae;->e:J

    .line 180
    return-void
.end method

.method public final i()Lcom/google/android/maps/driveabout/a/af;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/maps/driveabout/a/af;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ae;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/maps/driveabout/a/ae;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/af;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Lcom/google/android/maps/driveabout/a/ae;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/a/ae;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/a/ae;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/a/ae;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
