.class final Lcom/google/android/maps/driveabout/model/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    .line 40
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    .line 41
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    .line 42
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    .line 43
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/model/ak;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->a:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    .line 47
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->b:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    .line 48
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    .line 49
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    .line 50
    return-void
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    .line 54
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    if-ge p2, v0, :cond_1

    iput p2, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    .line 55
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    if-le p1, v0, :cond_2

    iput p1, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    .line 56
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    if-le p2, v0, :cond_3

    iput p2, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    .line 57
    :cond_3
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 60
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ak;->a(II)V

    .line 61
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/model/ak;)V
    .locals 2

    .prologue
    .line 64
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ak;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ak;->a(II)V

    .line 65
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ak;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ak;->d:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/model/ak;->a(II)V

    .line 66
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/model/am;)Z
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->e()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/am;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 74
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    iget v3, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-gt v2, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    iget v2, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ak;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ak;->b:I

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ak;->c:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ak;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
