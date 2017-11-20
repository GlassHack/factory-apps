.class public final Lcom/google/android/maps/driveabout/model/l;
.super Lcom/google/android/maps/driveabout/model/an;
.source "SourceFile"


# instance fields
.field private a:[Lcom/google/android/maps/driveabout/model/ab;

.field private b:Lcom/google/android/maps/driveabout/model/am;


# direct methods
.method protected constructor <init>([Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/an;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    .line 19
    invoke-static {p1}, Lcom/google/android/maps/driveabout/model/am;->a([Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->b:Lcom/google/android/maps/driveabout/model/am;

    .line 20
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/l;
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 28
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 29
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 30
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 31
    const/4 v1, 0x3

    aput-object p2, v0, v1

    .line 32
    new-instance v1, Lcom/google/android/maps/driveabout/model/l;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/model/l;-><init>([Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v1

    invoke-static {v0, v3, p1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v5

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v6

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v4, v4, v2

    invoke-static {v3, v4, p1}, Lcom/google/android/maps/driveabout/model/ae;->b(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 119
    :cond_2
    if-ne v0, v1, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/l;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/am;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 132
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/model/l;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/am;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->b:Lcom/google/android/maps/driveabout/model/am;

    return-object v0
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 90
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/l;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lcom/google/android/maps/driveabout/model/l;

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/model/ab;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/l;->a:[Lcom/google/android/maps/driveabout/model/ab;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
