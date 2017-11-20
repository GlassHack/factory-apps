.class final Lcom/google/common/io/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/al;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lcom/google/common/io/am;

.field final synthetic e:Lcom/google/common/io/d;


# direct methods
.method constructor <init>(Lcom/google/common/io/d;Lcom/google/common/io/am;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 595
    iput-object p1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    iput-object p2, p0, Lcom/google/common/io/e;->d:Lcom/google/common/io/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput v0, p0, Lcom/google/common/io/e;->a:I

    .line 597
    iput v0, p0, Lcom/google/common/io/e;->b:I

    .line 598
    iput v0, p0, Lcom/google/common/io/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 617
    iget v0, p0, Lcom/google/common/io/e;->b:I

    if-lez v0, :cond_0

    .line 618
    iget v0, p0, Lcom/google/common/io/e;->a:I

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->q:I

    iget v2, p0, Lcom/google/common/io/e;->b:I

    sub-int/2addr v1, v2

    shl-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->p:I

    and-int/2addr v0, v1

    .line 619
    iget-object v1, p0, Lcom/google/common/io/e;->d:Lcom/google/common/io/am;

    iget-object v2, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v2}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/io/c;->a(I)C

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/common/io/am;->a(C)V

    .line 620
    iget v0, p0, Lcom/google/common/io/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/e;->c:I

    .line 621
    iget-object v0, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v0}, Lcom/google/common/io/d;->b(Lcom/google/common/io/d;)Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    iget v0, p0, Lcom/google/common/io/e;->c:I

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->r:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/common/io/e;->d:Lcom/google/common/io/am;

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->b(Lcom/google/common/io/d;)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/common/io/am;->a(C)V

    .line 624
    iget v0, p0, Lcom/google/common/io/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/e;->c:I

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/common/io/e;->d:Lcom/google/common/io/am;

    .line 629
    return-void
.end method

.method public final a(B)V
    .locals 3

    .prologue
    .line 601
    iget v0, p0, Lcom/google/common/io/e;->a:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/io/e;->a:I

    .line 602
    iget v0, p0, Lcom/google/common/io/e;->a:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/e;->a:I

    .line 603
    iget v0, p0, Lcom/google/common/io/e;->b:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/io/e;->b:I

    .line 604
    :goto_0
    iget v0, p0, Lcom/google/common/io/e;->b:I

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->q:I

    if-lt v0, v1, :cond_0

    .line 605
    iget v0, p0, Lcom/google/common/io/e;->a:I

    iget v1, p0, Lcom/google/common/io/e;->b:I

    iget-object v2, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v2}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v2

    iget v2, v2, Lcom/google/common/io/c;->q:I

    sub-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->p:I

    and-int/2addr v0, v1

    .line 606
    iget-object v1, p0, Lcom/google/common/io/e;->d:Lcom/google/common/io/am;

    iget-object v2, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v2}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/io/c;->a(I)C

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/common/io/am;->a(C)V

    .line 607
    iget v0, p0, Lcom/google/common/io/e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/e;->c:I

    .line 608
    iget v0, p0, Lcom/google/common/io/e;->b:I

    iget-object v1, p0, Lcom/google/common/io/e;->e:Lcom/google/common/io/d;

    invoke-static {v1}, Lcom/google/common/io/d;->a(Lcom/google/common/io/d;)Lcom/google/common/io/c;

    move-result-object v1

    iget v1, v1, Lcom/google/common/io/c;->q:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/io/e;->b:I

    goto :goto_0

    .line 610
    :cond_0
    return-void
.end method
