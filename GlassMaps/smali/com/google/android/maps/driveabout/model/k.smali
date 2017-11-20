.class public final Lcom/google/android/maps/driveabout/model/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/maps/driveabout/model/k;


# instance fields
.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 26
    new-instance v0, Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/maps/driveabout/model/k;-><init>(JJ)V

    sput-object v0, Lcom/google/android/maps/driveabout/model/k;->a:Lcom/google/android/maps/driveabout/model/k;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->b:J

    .line 44
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->c:J

    .line 45
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    .line 47
    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/model/k;->b:J

    .line 36
    iput-wide p3, p0, Lcom/google/android/maps/driveabout/model/k;->c:J

    .line 37
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/k;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    .line 39
    return-void
.end method

.method private static a(JJ)J
    .locals 12

    .prologue
    const/16 v11, 0x2c

    const/16 v4, 0x20

    const/4 v10, 0x4

    const-wide v8, 0xffffffffffffL

    .line 192
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    .line 193
    shl-long v2, p0, v4

    and-long/2addr v2, v8

    ushr-long v4, p2, v4

    or-long/2addr v2, v4

    .line 194
    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    .line 195
    shl-long v6, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v6

    and-long/2addr v0, v8

    xor-long/2addr v0, v2

    .line 196
    shl-long v2, v0, v10

    ushr-long/2addr v0, v11

    xor-long/2addr v0, v2

    and-long/2addr v0, v8

    xor-long/2addr v0, v4

    .line 197
    return-wide v0
.end method

.method public static a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;
    .locals 5

    .prologue
    .line 69
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .line 70
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .line 71
    new-instance v4, Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/model/k;-><init>(JJ)V

    return-object v4
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/k;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 98
    if-nez p0, :cond_0

    .line 99
    const-string p0, ""

    .line 102
    :cond_0
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v1, v0

    if-ne v1, v4, :cond_4

    .line 104
    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, v0, v5

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 105
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "malformed feature id "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    aget-object v1, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/f;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 109
    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/f;->a(Ljava/lang/String;)J

    move-result-wide v3

    .line 110
    new-instance v0, Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/model/k;-><init>(JJ)V

    .line 117
    :goto_1
    return-object v0

    .line 111
    :cond_4
    array-length v1, v0

    if-ne v1, v5, :cond_7

    .line 112
    aget-object v1, v0, v3

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "malformed feature id "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_6
    aget-object v0, v0, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/f;->a(Ljava/lang/String;)J

    move-result-wide v1

    .line 117
    new-instance v0, Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/k;-><init>(J)V

    goto :goto_1

    .line 119
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "malformed feature id "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;
    .locals 6

    .prologue
    .line 75
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 76
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 77
    new-instance v2, Lcom/google/android/maps/driveabout/model/k;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/k;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->b:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->c:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/model/k;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/k;

    if-eqz v2, :cond_5

    .line 168
    check-cast p1, Lcom/google/android/maps/driveabout/model/k;

    .line 169
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/google/android/maps/driveabout/model/k;->e:Z

    if-eqz v2, :cond_3

    .line 170
    :cond_0
    iget-wide v2, p1, Lcom/google/android/maps/driveabout/model/k;->d:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 174
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 170
    goto :goto_0

    .line 172
    :cond_3
    iget-wide v2, p1, Lcom/google/android/maps/driveabout/model/k;->b:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/model/k;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/google/android/maps/driveabout/model/k;->c:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/model/k;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/k;->e:Z

    if-eqz v0, :cond_0

    .line 153
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/k;->d:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[hash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/k;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
