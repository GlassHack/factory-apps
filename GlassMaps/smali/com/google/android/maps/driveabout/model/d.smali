.class public final Lcom/google/android/maps/driveabout/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/k;

.field private final b:Lcom/google/android/maps/driveabout/model/az;

.field private final c:[B

.field private final d:Lcom/google/android/maps/driveabout/model/aq;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private final i:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/az;[BLcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/d;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 60
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/d;->b:Lcom/google/android/maps/driveabout/model/az;

    .line 61
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/d;->c:[B

    .line 62
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/d;->d:Lcom/google/android/maps/driveabout/model/aq;

    .line 63
    iput p5, p0, Lcom/google/android/maps/driveabout/model/d;->e:I

    .line 64
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/d;->f:Ljava/lang/String;

    .line 65
    iput p7, p0, Lcom/google/android/maps/driveabout/model/d;->g:I

    .line 66
    iput p8, p0, Lcom/google/android/maps/driveabout/model/d;->h:I

    .line 67
    iput-object p9, p0, Lcom/google/android/maps/driveabout/model/d;->i:[I

    .line 68
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/d;
    .locals 13

    .prologue
    .line 87
    invoke-static {p0, p2}, Lcom/google/android/maps/driveabout/model/az;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/az;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/az;->a()I

    move-result v1

    new-array v4, v1, [B

    .line 91
    invoke-interface {p0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 94
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 99
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v5

    .line 102
    const/4 v7, 0x0

    .line 104
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 105
    move-object/from16 v0, p4

    invoke-static {v6, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    aget-object v7, p4, v6

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v8

    .line 112
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v1, 0x1

    invoke-static {v1, v9}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v2

    .line 123
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v11

    .line 124
    new-array v10, v11, [I

    .line 125
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v11, :cond_3

    .line 126
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v12

    aput v12, v10, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_2
    const/4 v1, 0x2

    invoke-static {v1, v9}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v2

    goto :goto_0

    .line 129
    :cond_3
    new-instance v1, Lcom/google/android/maps/driveabout/model/d;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/model/d;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/az;[BLcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/az;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/d;->b:Lcom/google/android/maps/driveabout/model/az;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/d;->d:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x3

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/maps/driveabout/model/d;->g:I

    return v0
.end method
