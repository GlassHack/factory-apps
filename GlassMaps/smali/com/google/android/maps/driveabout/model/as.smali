.class public final Lcom/google/android/maps/driveabout/model/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/ag;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ag;I)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    .line 17
    iput p2, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    .line 18
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ag;II)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    .line 23
    iput p2, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    .line 24
    iput p3, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(ILcom/google/android/maps/driveabout/model/ab;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 48
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    return v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/am;
    .locals 7

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 107
    iget v2, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 109
    iget v1, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 112
    iget v0, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    iget v6, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    if-ge v0, v6, :cond_4

    .line 113
    iget-object v6, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v6, v0, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 114
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 115
    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 116
    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 117
    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {v5, v4, v2}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 121
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 122
    new-instance v1, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/as;

    if-eqz v2, :cond_3

    .line 66
    check-cast p1, Lcom/google/android/maps/driveabout/model/as;

    .line 67
    iget v2, p1, Lcom/google/android/maps/driveabout/model/as;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/google/android/maps/driveabout/model/as;->c:I

    iget v3, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 75
    .line 77
    iget v0, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ag;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/maps/driveabout/model/as;->b:I

    iget v1, p0, Lcom/google/android/maps/driveabout/model/as;->c:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/as;->a:Lcom/google/android/maps/driveabout/model/ag;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
