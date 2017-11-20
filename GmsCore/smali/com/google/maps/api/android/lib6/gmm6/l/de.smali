.class public Lcom/google/maps/api/android/lib6/gmm6/l/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/cp;


# instance fields
.field public final a:Lcom/google/maps/api/android/lib6/a/a/a;

.field public final b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

.field public final c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

.field public final d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field public final e:F

.field public final f:Z

.field public final g:[I

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IF[I)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/maps/api/android/lib6/gmm6/l/de;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IF[IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IF[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->h:Ljava/lang/String;

    iput p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->i:I

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->e:F

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->g:[I

    iput-boolean p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->f:Z

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/de;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;Z)Lcom/google/maps/api/android/lib6/gmm6/l/de;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;Z)Lcom/google/maps/api/android/lib6/gmm6/l/de;
    .locals 23

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v5

    invoke-static/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v9

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v6, v3, [Lcom/google/maps/api/android/lib6/gmm6/l/db;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/aa;)Lcom/google/maps/api/android/lib6/gmm6/l/db;

    move-result-object v4

    aput-object v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float v11, v2, v3

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v13, v3, [I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v7

    aput v7, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    invoke-static {v2, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/df;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v7, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v8, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v9, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v2 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/l/df;-><init>(ILcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;ILjava/lang/String;IFI[I)V

    :goto_3
    return-object v2

    :cond_4
    new-instance v14, Lcom/google/maps/api/android/lib6/gmm6/l/de;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v0, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-object/from16 v18, v0

    iget v2, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v0, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v22}, Lcom/google/maps/api/android/lib6/gmm6/l/de;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IF[I)V

    move-object v2, v14

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    return-object v0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/gmm6/l/x;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->i:I

    return v0
.end method

.method public final e()[I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->g:[I

    return-object v0
.end method

.method public final f()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->b:Lcom/google/maps/api/android/lib6/gmm6/l/l;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->i()I

    move-result v3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->c:[Lcom/google/maps/api/android/lib6/gmm6/l/db;

    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->d()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a:Lcom/google/maps/api/android/lib6/a/a/a;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/a/a/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/de;->d:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/x;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method
