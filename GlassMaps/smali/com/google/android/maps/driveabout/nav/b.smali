.class public final Lcom/google/android/maps/driveabout/nav/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    .line 21
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    .line 22
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 29
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/b;

    const/4 v1, 0x1

    .line 33
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 34
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/nav/b;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/h;->q:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 49
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 50
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 51
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/nav/b;

    if-eqz v2, :cond_3

    .line 68
    check-cast p1, Lcom/google/android/maps/driveabout/nav/b;

    .line 69
    iget v2, p1, Lcom/google/android/maps/driveabout/nav/b;->a:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/maps/driveabout/nav/b;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/maps/driveabout/nav/b;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/nav/b;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
