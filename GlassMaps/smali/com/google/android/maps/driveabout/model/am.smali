.class public final Lcom/google/android/maps/driveabout/model/am;
.super Lcom/google/android/maps/driveabout/model/an;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/model/ab;

.field protected b:Lcom/google/android/maps/driveabout/model/ab;

.field private volatile c:Lcom/google/android/maps/driveabout/model/ab;

.field private volatile d:Lcom/google/android/maps/driveabout/model/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/an;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    .line 22
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 23
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;I)Lcom/google/android/maps/driveabout/model/am;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 101
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 102
    new-instance v2, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v2
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;
    .locals 6

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ge v0, v1, :cond_0

    .line 77
    iget v1, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 78
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 83
    :goto_0
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ge v2, v3, :cond_1

    .line 84
    iget v3, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 85
    iget v2, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 90
    :goto_1
    new-instance v4, Lcom/google/android/maps/driveabout/model/am;

    new-instance v5, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v5, v1, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    invoke-direct {v4, v5, v1}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v4

    .line 80
    :cond_0
    iget v1, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 81
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    goto :goto_0

    .line 87
    :cond_1
    iget v3, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 88
    iget v2, p0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    goto :goto_1
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/ag;)Lcom/google/android/maps/driveabout/model/am;
    .locals 7

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 31
    iget v2, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 33
    iget v1, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 36
    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 37
    invoke-virtual {p0, v0, v5}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 38
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 39
    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 40
    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 41
    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 36
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {v5, v4, v2}, Lcom/google/android/maps/driveabout/model/ab;->d(II)V

    .line 45
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 46
    new-instance v1, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v1, v5, v0}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v1
.end method

.method public static a([Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/am;
    .locals 7

    .prologue
    .line 53
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 54
    iget v2, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 56
    iget v1, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 59
    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_4

    .line 60
    aget-object v5, p0, v0

    .line 61
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-ge v6, v4, :cond_0

    iget v4, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 62
    :cond_0
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-le v6, v3, :cond_1

    iget v3, v5, Lcom/google/android/maps/driveabout/model/ab;->a:I

    .line 63
    :cond_1
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-ge v6, v2, :cond_2

    iget v2, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 64
    :cond_2
    iget v6, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-le v6, v1, :cond_3

    iget v1, v5, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/model/am;

    new-instance v5, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v5, v4, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2, v3, v1}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x4

    return v0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/model/ab;
    .locals 3

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->c:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->c:Lcom/google/android/maps/driveabout/model/ab;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->c:Lcom/google/android/maps/driveabout/model/ab;

    .line 178
    :goto_0
    return-object v0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->d:Lcom/google/android/maps/driveabout/model/ab;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->d:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;
    .locals 5

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 193
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 194
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v4, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 195
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 196
    new-instance v2, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ab;)Z
    .locals 2

    .prologue
    .line 127
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, v0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v0, v0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/am;
    .locals 5

    .prologue
    .line 235
    if-gez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "distance cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/model/am;

    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/am;
    .locals 5

    .prologue
    .line 221
    new-instance v1, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 222
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 223
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v4, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v4, v4, Lcom/google/android/maps/driveabout/model/ab;->b:I

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    .line 225
    iget v0, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget v3, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-gt v0, v3, :cond_0

    iget v0, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget v3, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-le v0, v3, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/maps/driveabout/model/am;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/am;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 2

    .prologue
    .line 147
    instance-of v0, p1, Lcom/google/android/maps/driveabout/model/am;

    if-eqz v0, :cond_1

    .line 148
    check-cast p1, Lcom/google/android/maps/driveabout/model/am;

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v1, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/model/an;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/model/am;
    .locals 0

    .prologue
    .line 133
    return-object p0
.end method

.method public final d()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final e()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    if-ne p0, p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    instance-of v2, p1, Lcom/google/android/maps/driveabout/model/am;

    if-eqz v2, :cond_3

    .line 257
    check-cast p1, Lcom/google/android/maps/driveabout/model/am;

    .line 258
    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public final f()Lcom/google/android/maps/driveabout/model/ab;
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/model/ab;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v2, v2, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v3, v3, Lcom/google/android/maps/driveabout/model/ab;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>(II)V

    return-object v0
.end method

.method public final g()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    iget v0, v0, Lcom/google/android/maps/driveabout/model/ab;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    iget v1, v1, Lcom/google/android/maps/driveabout/model/ab;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 245
    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 248
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/ab;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/am;->a:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/am;->b:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
