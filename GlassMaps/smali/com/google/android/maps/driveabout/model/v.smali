.class public Lcom/google/android/maps/driveabout/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/k;

.field private final b:Lcom/google/android/maps/driveabout/model/ag;

.field private final c:[Lcom/google/android/maps/driveabout/model/s;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/maps/driveabout/model/aq;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:F

.field private final j:I

.field private final k:Z

.field private final l:[I


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;IFI[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/v;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 70
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/v;->b:Lcom/google/android/maps/driveabout/model/ag;

    .line 71
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/v;->c:[Lcom/google/android/maps/driveabout/model/s;

    .line 72
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/v;->d:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/v;->e:Lcom/google/android/maps/driveabout/model/aq;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/v;->f:I

    .line 75
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/v;->g:Ljava/lang/String;

    .line 76
    iput p4, p0, Lcom/google/android/maps/driveabout/model/v;->h:I

    .line 77
    iput p5, p0, Lcom/google/android/maps/driveabout/model/v;->i:F

    .line 78
    iput p6, p0, Lcom/google/android/maps/driveabout/model/v;->j:I

    .line 79
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/v;->l:[I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/v;->k:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[I)V
    .locals 12

    .prologue
    .line 96
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/model/v;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[IZ)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[IZ)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/v;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 116
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/v;->b:Lcom/google/android/maps/driveabout/model/ag;

    .line 117
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/v;->c:[Lcom/google/android/maps/driveabout/model/s;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/v;->d:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/v;->e:Lcom/google/android/maps/driveabout/model/aq;

    .line 120
    iput p5, p0, Lcom/google/android/maps/driveabout/model/v;->f:I

    .line 121
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/v;->g:Ljava/lang/String;

    .line 122
    iput p7, p0, Lcom/google/android/maps/driveabout/model/v;->h:I

    .line 123
    iput p8, p0, Lcom/google/android/maps/driveabout/model/v;->i:F

    .line 124
    iput p9, p0, Lcom/google/android/maps/driveabout/model/v;->j:I

    .line 125
    iput-object p10, p0, Lcom/google/android/maps/driveabout/model/v;->l:[I

    .line 126
    iput-boolean p11, p0, Lcom/google/android/maps/driveabout/model/v;->k:Z

    .line 127
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/v;
    .locals 6

    .prologue
    .line 149
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/model/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/model/v;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Z)Lcom/google/android/maps/driveabout/model/v;
    .locals 22

    .prologue
    .line 164
    const/4 v5, 0x0

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v14

    .line 170
    const/4 v15, 0x0

    .line 171
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 172
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    .line 176
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 177
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v6

    .line 180
    const/4 v2, -0x1

    .line 181
    const/4 v7, 0x0

    .line 182
    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_b

    .line 183
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v8

    .line 184
    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    aget-object v7, p4, v8

    .line 189
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v11

    .line 190
    new-array v9, v11, [Lcom/google/android/maps/driveabout/model/s;

    .line 191
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 192
    invoke-static/range {v2 .. v7}, Lcom/google/android/maps/driveabout/model/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/s;

    move-result-object v2

    aput-object v2, v9, v10

    .line 191
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_2
    move-object v5, v9

    move/from16 v21, v8

    move-object v8, v7

    move/from16 v7, v21

    .line 198
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v9

    .line 201
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/model/z;->c(I)F

    move-result v10

    .line 204
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 206
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    .line 213
    :goto_2
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x1

    invoke-static {v2, v11}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v3

    .line 221
    :cond_3
    :goto_3
    const/4 v2, 0x0

    .line 222
    const/16 v4, 0x8

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 224
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 226
    :cond_5
    new-array v12, v2, [I

    .line 227
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_8

    .line 228
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v13

    aput v13, v12, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 208
    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    .line 209
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    or-int v11, v2, v3

    goto :goto_2

    .line 216
    :cond_7
    const/4 v2, 0x2

    invoke-static {v2, v11}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v3

    goto :goto_3

    .line 231
    :cond_8
    if-eqz p5, :cond_9

    .line 233
    new-instance v2, Lcom/google/android/maps/driveabout/model/w;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/maps/driveabout/model/w;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[I)V

    .line 236
    :goto_5
    return-object v2

    :cond_9
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ge v0, v2, :cond_a

    new-instance v13, Lcom/google/android/maps/driveabout/model/v;

    move-object/from16 v16, v6

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v20}, Lcom/google/android/maps/driveabout/model/v;-><init>(Lcom/google/android/maps/driveabout/model/ag;Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;IFI[I)V

    :goto_6
    move-object v2, v13

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/google/android/maps/driveabout/model/v;

    move-object v4, v14

    invoke-direct/range {v2 .. v12}, Lcom/google/android/maps/driveabout/model/v;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;IFI[I)V

    move-object v13, v2

    goto :goto_6

    :cond_b
    move-object v8, v7

    move v7, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/v;->e:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x8

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/google/android/maps/driveabout/model/v;->h:I

    return v0
.end method
