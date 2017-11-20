.class public final Lcom/google/android/maps/driveabout/model/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private final a:I

.field private final b:[B

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/model/aq;

.field private final e:[I


# direct methods
.method private constructor <init>(I[BILcom/google/android/maps/driveabout/model/aq;[I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/android/maps/driveabout/model/al;->a:I

    .line 37
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/al;->b:[B

    .line 38
    iput p3, p0, Lcom/google/android/maps/driveabout/model/al;->c:I

    .line 39
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/al;->d:Lcom/google/android/maps/driveabout/model/aq;

    .line 40
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/al;->e:[I

    .line 41
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/al;
    .locals 7

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 55
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 56
    new-array v2, v0, [B

    .line 57
    invoke-interface {p0, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 59
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 62
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 63
    new-array v5, v4, [I

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 65
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    aput v6, v5, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/al;

    invoke-static {}, Lcom/google/android/maps/driveabout/model/aq;->a()Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/al;-><init>(I[BILcom/google/android/maps/driveabout/model/aq;[I)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/maps/driveabout/model/al;->a:I

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/al;->d:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x6

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/maps/driveabout/model/al;->c:I

    return v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/al;->b:[B

    return-object v0
.end method
