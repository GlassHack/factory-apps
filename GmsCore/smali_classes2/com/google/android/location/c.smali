.class final Lcom/google/android/location/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[Ljava/lang/String;

.field final b:[Z

.field final c:[D

.field final d:[D

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/c;->a:[Ljava/lang/String;

    .line 543
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/google/android/location/c;->b:[Z

    .line 544
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/google/android/location/c;->c:[D

    .line 545
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/google/android/location/c;->d:[D

    .line 546
    iput v1, p0, Lcom/google/android/location/c;->e:I

    move v0, v1

    .line 549
    :goto_0
    if-ge v0, v3, :cond_0

    .line 550
    iget-object v2, p0, Lcom/google/android/location/c;->b:[Z

    aput-boolean v1, v2, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/android/location/c;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/location/f/g;Lcom/google/android/location/os/ah;)V
    .locals 4

    .prologue
    .line 579
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/f/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/google/android/location/c;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/location/c;->e:I

    aput-object v0, v1, v2

    .line 584
    iget-object v0, p0, Lcom/google/android/location/c;->c:[D

    iget v1, p0, Lcom/google/android/location/c;->e:I

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->b()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 585
    iget-object v0, p0, Lcom/google/android/location/c;->d:[D

    iget v1, p0, Lcom/google/android/location/c;->e:I

    invoke-interface {p2}, Lcom/google/android/location/os/ah;->c()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 586
    iget-object v0, p0, Lcom/google/android/location/c;->b:[Z

    iget v1, p0, Lcom/google/android/location/c;->e:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 587
    iget v0, p0, Lcom/google/android/location/c;->e:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/google/android/location/c;->e:I

    goto :goto_0
.end method
