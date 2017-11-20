.class public final Lcom/google/android/maps/driveabout/model/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/av;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/aw;

.field private final b:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[B

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/aw;III[BLcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/n;->i:I

    .line 34
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/n;->a:Lcom/google/android/maps/driveabout/model/aw;

    .line 35
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/n;->b:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 36
    iput p2, p0, Lcom/google/android/maps/driveabout/model/n;->c:I

    .line 37
    iput p3, p0, Lcom/google/android/maps/driveabout/model/n;->d:I

    .line 38
    iput p4, p0, Lcom/google/android/maps/driveabout/model/n;->e:I

    .line 43
    if-eqz p5, :cond_1

    array-length v0, p5

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/google/googlenav/d/b;

    invoke-direct {v0}, Lcom/google/googlenav/d/b;-><init>()V

    .line 45
    invoke-virtual {v0, p5}, Lcom/google/googlenav/d/b;->a([B)[B

    move-result-object p5

    .line 46
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/google/googlenav/d/b;->a()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/n;->g:[Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Lcom/google/googlenav/d/b;->b()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/n;->h:[Ljava/lang/String;

    .line 49
    invoke-virtual {v0}, Lcom/google/googlenav/d/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/n;->i:I

    .line 51
    :cond_0
    aget-byte v0, p5, v2

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 57
    :try_start_0
    invoke-static {p5}, Lcom/google/googlenav/common/b/a/a/c;->a([B)[B
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p5

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/n;->g:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 64
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/n;->g:[Ljava/lang/String;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/n;->h:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/n;->h:[Ljava/lang/String;

    .line 69
    :cond_3
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/n;->f:[B

    .line 70
    return-void

    .line 59
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input image is not Compact JPEG"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;Ljava/io/DataInput;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)Lcom/google/android/maps/driveabout/model/n;
    .locals 7

    .prologue
    .line 83
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 84
    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    .line 85
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TILE_MAGIC expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 89
    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 90
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Version mismatch: 7 or 8 expected, "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/aw;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 100
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 101
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x24

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected tile coords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_3
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 106
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 107
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 108
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 109
    new-array v5, v0, [B

    .line 110
    invoke-interface {p1, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 112
    new-instance v0, Lcom/google/android/maps/driveabout/model/n;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/model/n;-><init>(Lcom/google/android/maps/driveabout/model/aw;III[BLcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;III[BLjava/io/DataOutput;)V
    .locals 1

    .prologue
    .line 149
    const v0, 0x44524154

    invoke-interface {p5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 150
    const/16 v0, 0x8

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 151
    invoke-virtual {p0, p5}, Lcom/google/android/maps/driveabout/model/aw;->a(Ljava/io/DataOutput;)V

    .line 152
    invoke-static {p5, p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 153
    invoke-static {p5, p2}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 154
    invoke-static {p5, p3}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 155
    array-length v0, p4

    invoke-static {p5, v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataOutput;I)V

    .line 156
    invoke-interface {p5, p4}, Ljava/io/DataOutput;->write([B)V

    .line 157
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/n;->a:Lcom/google/android/maps/driveabout/model/aw;

    return-object v0
.end method

.method public final a(Lcom/google/googlenav/common/a;)Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/google/android/maps/driveabout/model/n;->c:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, -0x1

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
