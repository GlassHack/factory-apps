.class public final Lcom/google/android/gms/internal/vw;
.super Lcom/google/android/gms/internal/xn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/xn",
        "<",
        "Lcom/google/android/gms/internal/vw;",
        ">;"
    }
.end annotation


# instance fields
.field public aSA:Lcom/google/android/gms/internal/wh;

.field public aSB:Lcom/google/android/gms/internal/vu;

.field public aSC:Lcom/google/android/gms/internal/vu;

.field public aSD:[Lcom/google/android/gms/internal/vu;

.field public aSE:Lcom/google/android/gms/internal/wb;

.field public aSq:Lcom/google/android/gms/internal/vt;

.field public aSr:[B

.field public aSs:Lcom/google/android/gms/internal/wc;

.field public aSt:Lcom/google/android/gms/internal/wk;

.field public aSu:Lcom/google/android/gms/internal/wb;

.field public aSv:Lcom/google/android/gms/internal/wh;

.field public aSw:Lcom/google/android/gms/internal/wh;

.field public aSx:Lcom/google/android/gms/internal/wh;

.field public aSy:[Lcom/google/android/gms/internal/wf;

.field public aSz:[Lcom/google/android/gms/internal/wh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/xn;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vw;->uS()Lcom/google/android/gms/internal/vw;

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/xn;->c()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    sget-object v3, Lcom/google/android/gms/internal/xw;->aZm:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v2

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    array-length v2, v2

    if-lez v2, :cond_b

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    array-length v3, v3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    const/16 v4, 0x9

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    move v0, v2

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-eqz v2, :cond_c

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-eqz v2, :cond_d

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-eqz v2, :cond_e

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    array-length v2, v2

    if-lez v2, :cond_10

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    const/16 v3, 0xd

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-eqz v1, :cond_11

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-eqz v1, :cond_12

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-eqz v1, :cond_13

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xm;->c(ILcom/google/android/gms/internal/xt;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/vw;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/vw;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v1, :cond_d

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSr:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_10

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_12

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_13

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-nez v1, :cond_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-nez v1, :cond_0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-nez v1, :cond_16

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-nez v1, :cond_0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/xr;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_17

    iget-object v1, p1, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-nez v1, :cond_0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vw;->a(Lcom/google/android/gms/internal/xn;)Z

    move-result v0

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wh;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    iget-object v2, p1, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/wb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    invoke-static {v2}, Lcom/google/android/gms/internal/xr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    invoke-static {v2}, Lcom/google/android/gms/internal/xr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    invoke-static {v2}, Lcom/google/android/gms/internal/xr;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-nez v2, :cond_a

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vw;->wl()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vt;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wc;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wk;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wh;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vu;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/wb;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/xt;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gms/internal/xl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vw;->w(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vw;

    move-result-object v0

    return-object v0
.end method

.method public uS()Lcom/google/android/gms/internal/vw;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    sget-object v0, Lcom/google/android/gms/internal/xw;->aZm:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-static {}, Lcom/google/android/gms/internal/wf;->vh()[Lcom/google/android/gms/internal/wf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    invoke-static {}, Lcom/google/android/gms/internal/wh;->vl()[Lcom/google/android/gms/internal/wh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-static {}, Lcom/google/android/gms/internal/vu;->uP()[Lcom/google/android/gms/internal/vu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    iput-object v1, p0, Lcom/google/android/gms/internal/vw;->aYT:Lcom/google/android/gms/internal/xp;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/vw;->aZe:I

    return-object p0
.end method

.method public w(Lcom/google/android/gms/internal/xl;)Lcom/google/android/gms/internal/vw;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vw;->a(Lcom/google/android/gms/internal/xl;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/wk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/wb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/wf;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    new-instance v3, Lcom/google/android/gms/internal/wf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/wf;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    array-length v0, v0

    goto :goto_1

    :cond_8
    new-instance v3, Lcom/google/android/gms/internal/wf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/wf;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x4a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_a

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    new-instance v3, Lcom/google/android/gms/internal/wh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/wh;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    array-length v0, v0

    goto :goto_3

    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/wh;

    invoke-direct {v3}, Lcom/google/android/gms/internal/wh;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/wh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/vu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/vu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x6a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/xw;->b(Lcom/google/android/gms/internal/xl;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    if-nez v0, :cond_10

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/vu;

    if-eqz v0, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/vu;

    invoke-direct {v3}, Lcom/google/android/gms/internal/vu;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xl;->vU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    array-length v0, v0

    goto :goto_5

    :cond_11
    new-instance v3, Lcom/google/android/gms/internal/vu;

    invoke-direct {v3}, Lcom/google/android/gms/internal/vu;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/wb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/vt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-nez v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/wc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/xl;->a(Lcom/google/android/gms/internal/xt;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x7a -> :sswitch_e
        0x82 -> :sswitch_f
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/android/gms/internal/xm;)V
    .locals 4
    .param p1, "output"    # Lcom/google/android/gms/internal/xm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    sget-object v2, Lcom/google/android/gms/internal/xw;->aZm:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSr:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSt:Lcom/google/android/gms/internal/wk;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSu:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSv:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSw:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSx:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSy:[Lcom/google/android/gms/internal/wf;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSz:[Lcom/google/android/gms/internal/wh;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    if-eqz v0, :cond_a

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSA:Lcom/google/android/gms/internal/wh;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    if-eqz v0, :cond_b

    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSB:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/vw;->aSC:Lcom/google/android/gms/internal/vu;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    array-length v0, v0

    if-lez v0, :cond_e

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    array-length v0, v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSD:[Lcom/google/android/gms/internal/vu;

    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSE:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    if-eqz v0, :cond_10

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSq:Lcom/google/android/gms/internal/vt;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/vw;->aSs:Lcom/google/android/gms/internal/wc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/xm;->a(ILcom/google/android/gms/internal/xt;)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/xn;->writeTo(Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
