.class public final Lcom/google/android/location/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field b:J

.field public c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;J)V
    .locals 9

    .prologue
    .line 45
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/b/a;-><init>(ILjava/lang/Object;JJ)V

    .line 46
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;JJ)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/b/a;->c:I

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position many not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    .line 58
    iput p1, p0, Lcom/google/android/location/b/a;->c:I

    .line 59
    iput-wide p3, p0, Lcom/google/android/location/b/a;->a:J

    .line 60
    iput-wide p5, p0, Lcom/google/android/location/b/a;->b:J

    .line 61
    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/android/location/f/aj;)Lcom/google/android/location/b/a;
    .locals 8

    .prologue
    .line 129
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v6

    .line 130
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    .line 131
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 132
    invoke-interface {p1, p0}, Lcom/google/android/location/f/aj;->a(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    new-instance v1, Lcom/google/android/location/b/a;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/b/a;-><init>(ILjava/lang/Object;JJ)V

    .line 134
    iput-wide v6, v1, Lcom/google/android/location/b/a;->b:J

    .line 135
    return-object v1
.end method

.method public static a(Lcom/google/android/location/b/a;Ljava/io/DataOutput;Lcom/google/android/location/f/aj;)V
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/google/android/location/b/a;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 141
    iget-wide v0, p0, Lcom/google/android/location/b/a;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 142
    iget v0, p0, Lcom/google/android/location/b/a;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-interface {p2, v0, p1}, Lcom/google/android/location/f/aj;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheResult ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/b/a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " databaseVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/b/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/b/a;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastSeenTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/b/a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
