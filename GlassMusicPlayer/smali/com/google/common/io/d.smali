.class final Lcom/google/common/io/d;
.super Lcom/google/common/io/b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/io/c;

.field private final b:Ljava/lang/Character;


# direct methods
.method private constructor <init>(Lcom/google/common/io/c;Ljava/lang/Character;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    invoke-direct {p0}, Lcom/google/common/io/b;-><init>()V

    .line 576
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/c;

    iput-object v0, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    .line 577
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/io/c;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Padding character %s was already in alphabet"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iput-object p2, p0, Lcom/google/common/io/d;->b:Ljava/lang/Character;

    .line 580
    return-void

    :cond_1
    move v0, v1

    .line 577
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2

    .prologue
    .line 572
    new-instance v0, Lcom/google/common/io/c;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/io/c;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/d;-><init>(Lcom/google/common/io/c;Ljava/lang/Character;)V

    .line 573
    return-void
.end method

.method static synthetic a(Lcom/google/common/io/d;)Lcom/google/common/io/c;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/io/d;)Ljava/lang/Character;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/common/io/d;->b:Ljava/lang/Character;

    return-object v0
.end method


# virtual methods
.method final a(I)I
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    iget v0, v0, Lcom/google/common/io/c;->r:I

    iget-object v1, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    iget v1, v1, Lcom/google/common/io/c;->s:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, v1, v2}, Lcom/google/common/b/a;->a(IILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method final a(Lcom/google/common/io/am;)Lcom/google/common/io/al;
    .locals 1

    .prologue
    .line 594
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v0, Lcom/google/common/io/e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/e;-><init>(Lcom/google/common/io/d;Lcom/google/common/io/am;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    invoke-virtual {v1}, Lcom/google/common/io/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/common/io/d;->a:Lcom/google/common/io/c;

    iget v2, v2, Lcom/google/common/io/c;->q:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/google/common/io/d;->b:Ljava/lang/Character;

    if-nez v1, :cond_1

    .line 741
    const-string v1, ".omitPadding()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 743
    :cond_1
    const-string v1, ".withPadChar("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/io/d;->b:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
