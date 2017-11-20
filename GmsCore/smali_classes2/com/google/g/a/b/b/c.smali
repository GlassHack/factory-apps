.class public final Lcom/google/g/a/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[Lcom/google/g/a/b/b/d;


# instance fields
.field private final a:Lcom/google/g/a/e/d;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 61
    const/16 v1, 0xa8

    new-array v1, v1, [Lcom/google/g/a/b/b/d;

    sput-object v1, Lcom/google/g/a/b/b/c;->b:[Lcom/google/g/a/b/b/d;

    move v3, v0

    move v1, v0

    .line 66
    :goto_0
    const/4 v0, 0x7

    if-gt v3, v0, :cond_1

    .line 67
    const/16 v0, 0x10

    :goto_1
    const/16 v2, 0x25

    if-ge v0, v2, :cond_0

    .line 68
    sget-object v4, Lcom/google/g/a/b/b/c;->b:[Lcom/google/g/a/b/b/d;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/google/g/a/b/b/d;

    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/g/a/b/b/d;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/g/a/e/d;

    invoke-direct {v0}, Lcom/google/g/a/e/d;-><init>()V

    iput-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/g/a/b/b/c;->c:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0, p1}, Lcom/google/g/a/e/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/d;

    .line 178
    if-nez v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/google/g/a/b/b/d;->a:I

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public final a(IILjava/lang/Object;)Lcom/google/g/a/b/b/c;
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    if-nez p3, :cond_0

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    and-int/lit16 v2, p1, 0xff

    add-int/lit8 v2, v2, -0x10

    add-int/2addr v0, v2

    sget-object v2, Lcom/google/g/a/b/b/c;->b:[Lcom/google/g/a/b/b/d;

    aget-object v0, v2, v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/google/g/a/e/d;->a(ILjava/lang/Object;)V

    .line 160
    return-object p0

    .line 157
    :cond_0
    new-instance v0, Lcom/google/g/a/b/b/d;

    invoke-direct {v0, p1, p3}, Lcom/google/g/a/b/b/d;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0}, Lcom/google/g/a/e/d;->a()Lcom/google/g/a/e/e;

    move-result-object v4

    .line 216
    :cond_0
    invoke-virtual {v4}, Lcom/google/g/a/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {v4}, Lcom/google/g/a/e/e;->b()I

    move-result v5

    .line 218
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0, v5}, Lcom/google/g/a/e/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/d;

    if-nez v0, :cond_1

    const/16 v0, 0x600

    .line 219
    :goto_0
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_2

    invoke-virtual {p1, v5}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 236
    :goto_1
    return v0

    .line 218
    :cond_1
    iget v0, v0, Lcom/google/g/a/b/b/d;->a:I

    const v3, 0xff00

    and-int/2addr v0, v3

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v6

    .line 223
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_3

    if-le v6, v2, :cond_3

    move v0, v1

    .line 224
    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/c;->a(I)I

    move-result v0

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/c;->b(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/g/a/b/b/c;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/c;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/c;

    move v3, v1

    .line 229
    :goto_2
    if-ge v3, v6, :cond_0

    .line 230
    invoke-virtual {p1, v5, v3}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/g/a/b/b/c;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v7

    if-nez v7, :cond_4

    move v0, v1

    .line 231
    goto :goto_1

    .line 229
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 236
    goto :goto_1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0, p1}, Lcom/google/g/a/e/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/g/a/b/b/d;

    .line 198
    if-nez v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/g/a/b/b/d;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-ne p0, p1, :cond_2

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 255
    check-cast p1, Lcom/google/g/a/b/b/c;

    .line 257
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    iget-object v1, p1, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0, v1}, Lcom/google/g/a/e/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/g/a/b/b/c;->a:Lcom/google/g/a/e/d;

    invoke-virtual {v0}, Lcom/google/g/a/e/d;->hashCode()I

    move-result v0

    .line 268
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProtoBufType Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/g/a/b/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
