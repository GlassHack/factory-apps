.class public final Lcom/google/android/maps/driveabout/model/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# static fields
.field private static final m:[B

.field private static final n:[I


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/k;

.field private final b:Lcom/google/android/maps/driveabout/model/az;

.field private final c:Lcom/google/android/maps/driveabout/model/az;

.field private final d:[B

.field private final e:Lcom/google/android/maps/driveabout/model/aq;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/maps/driveabout/model/e;->m:[B

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/maps/driveabout/model/e;->n:[I

    return-void

    .line 46
    :array_0
    .array-data 1
        0x1t
        0x2t
        0x4t
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/az;Lcom/google/android/maps/driveabout/model/az;[BIILcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/e;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 75
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/e;->b:Lcom/google/android/maps/driveabout/model/az;

    .line 76
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/e;->c:Lcom/google/android/maps/driveabout/model/az;

    .line 77
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/e;->d:[B

    .line 78
    iput p5, p0, Lcom/google/android/maps/driveabout/model/e;->h:I

    .line 79
    iput p6, p0, Lcom/google/android/maps/driveabout/model/e;->i:I

    .line 80
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/e;->e:Lcom/google/android/maps/driveabout/model/aq;

    .line 81
    iput p8, p0, Lcom/google/android/maps/driveabout/model/e;->f:I

    .line 82
    iput-object p9, p0, Lcom/google/android/maps/driveabout/model/e;->g:Ljava/lang/String;

    .line 83
    iput p10, p0, Lcom/google/android/maps/driveabout/model/e;->j:I

    .line 84
    iput p11, p0, Lcom/google/android/maps/driveabout/model/e;->k:I

    .line 85
    iput-object p12, p0, Lcom/google/android/maps/driveabout/model/e;->l:[I

    .line 86
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/e;
    .locals 18

    .prologue
    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/az;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/az;

    move-result-object v5

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/az;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;I)Lcom/google/android/maps/driveabout/model/az;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/az;->a()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 112
    :goto_0
    if-eqz v3, :cond_3

    .line 113
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/model/az;->a()I

    move-result v3

    .line 114
    :goto_1
    new-array v7, v3, [B

    .line 115
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    .line 118
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 121
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v9

    .line 124
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v10

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v11

    .line 129
    const/4 v12, 0x0

    .line 130
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    aget-object v12, p4, v11

    .line 135
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v13

    .line 138
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v14

    .line 141
    const/4 v4, 0x0

    .line 142
    const/4 v3, 0x1

    invoke-static {v3, v14}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v4

    .line 149
    :cond_1
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v16

    .line 150
    move/from16 v0, v16

    new-array v15, v0, [I

    .line 151
    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_5

    .line 152
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v17

    aput v17, v15, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 109
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/az;->a()I

    move-result v3

    goto :goto_1

    .line 144
    :cond_4
    const/4 v3, 0x2

    invoke-static {v3, v14}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v4

    goto :goto_2

    .line 155
    :cond_5
    new-instance v3, Lcom/google/android/maps/driveabout/model/e;

    invoke-direct/range {v3 .. v15}, Lcom/google/android/maps/driveabout/model/e;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/az;Lcom/google/android/maps/driveabout/model/az;[BIILcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;II[I)V

    return-object v3
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/e;->e:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x4

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/maps/driveabout/model/e;->j:I

    return v0
.end method
