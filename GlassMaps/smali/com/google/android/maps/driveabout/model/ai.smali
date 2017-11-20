.class public final Lcom/google/android/maps/driveabout/model/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 545
    const-class v0, Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/maps/driveabout/model/ai;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 550
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/model/ai;-><init>(I)V

    .line 551
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    sget-boolean v0, Lcom/google/android/maps/driveabout/model/ai;->a:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 555
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    .line 558
    return-void
.end method

.method private a(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 565
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 566
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 567
    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    .line 573
    :cond_0
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    mul-int/lit8 v1, v1, 0x3

    .line 574
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v3, v1, -0x2

    aget v2, v2, v3

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-ne p3, v2, :cond_1

    .line 584
    :goto_0
    return v0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    aput p1, v0, v1

    .line 581
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 582
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 583
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    .line 584
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 5

    .prologue
    .line 600
    mul-int/lit8 v0, p1, 0x3

    .line 601
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/model/ab;-><init>(III)V

    return-object v1
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 3

    .prologue
    .line 592
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->g()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->h()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ai;->a(III)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/ai;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    .line 612
    return-void
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/ag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 615
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 616
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/ai;->b:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ai;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    new-instance v1, Lcom/google/android/maps/driveabout/model/ag;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/model/ag;-><init>([ILcom/google/android/maps/driveabout/model/ah;)V

    return-object v1
.end method
