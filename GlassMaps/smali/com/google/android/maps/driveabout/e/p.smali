.class public final Lcom/google/android/maps/driveabout/e/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/q;

.field private final b:I

.field private final c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private final i:I


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/e/q;IIII)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    .line 37
    iput p3, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    .line 38
    iput p1, p0, Lcom/google/android/maps/driveabout/e/p;->c:I

    .line 39
    iput p4, p0, Lcom/google/android/maps/driveabout/e/p;->e:I

    .line 40
    iput p5, p0, Lcom/google/android/maps/driveabout/e/p;->f:I

    .line 41
    iput p6, p0, Lcom/google/android/maps/driveabout/e/p;->g:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/e/p;->d:Z

    .line 44
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 45
    iget v0, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/e/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/p;->a(Lcom/google/android/maps/driveabout/nav/ah;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/p;->i:I

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/e/p;->i:I

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/nav/ah;)I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    const/4 v0, -0x1

    :goto_1
    return v0

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 67
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_1

    .line 68
    :pswitch_3
    const/16 v0, 0xa

    goto :goto_1

    .line 72
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 73
    :pswitch_5
    const/16 v0, 0xb

    goto :goto_1

    .line 74
    :pswitch_6
    const/16 v0, 0xc

    goto :goto_1

    .line 78
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 79
    :pswitch_8
    const/16 v0, 0xd

    goto :goto_1

    .line 80
    :pswitch_9
    const/16 v0, 0xe

    goto :goto_1

    .line 84
    :pswitch_a
    const/16 v0, 0x25

    goto :goto_1

    .line 86
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_4

    .line 89
    const/16 v0, 0x13

    goto :goto_1

    .line 87
    :pswitch_c
    const/16 v0, 0x11

    goto :goto_1

    .line 88
    :pswitch_d
    const/16 v0, 0x12

    goto :goto_1

    .line 92
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_5

    .line 95
    const/16 v0, 0x16

    goto :goto_1

    .line 93
    :pswitch_f
    const/16 v0, 0x14

    goto :goto_1

    .line 94
    :pswitch_10
    const/16 v0, 0x15

    goto :goto_1

    .line 98
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ah;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_6

    .line 101
    const/16 v0, 0x19

    goto :goto_1

    .line 99
    :pswitch_12
    const/16 v0, 0x17

    goto :goto_1

    .line 100
    :pswitch_13
    const/16 v0, 0x18

    goto :goto_1

    .line 104
    :pswitch_14
    const/16 v0, 0x22

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 72
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 78
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 86
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 92
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 98
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/maps/driveabout/e/p;->c:I

    return v0
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/google/android/maps/driveabout/e/p;->f:I

    .line 163
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/p;->h:Ljava/lang/String;

    .line 175
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/e/p;->d:Z

    .line 171
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->b()I

    move-result v0

    return v0
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/google/android/maps/driveabout/e/p;->g:I

    .line 167
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/e/p;->d:Z

    return v0
.end method

.method final d()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    return-object v0
.end method

.method final e()Lcom/google/android/maps/driveabout/nav/ah;
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/e/q;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/e/q;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    goto :goto_0
.end method

.method final f()Lcom/google/android/maps/driveabout/e/q;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/p;->a:Lcom/google/android/maps/driveabout/e/q;

    return-object v0
.end method

.method final g()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/maps/driveabout/e/p;->b:I

    return v0
.end method

.method final h()V
    .locals 10

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/p;->d()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v9

    .line 179
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v4

    .line 180
    new-instance v0, Lcom/google/android/maps/driveabout/nav/i;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/p;->c:I

    iget v2, p0, Lcom/google/android/maps/driveabout/e/p;->e:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/e/p;->f:I

    iget v6, p0, Lcom/google/android/maps/driveabout/e/p;->g:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/e/p;->d:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/e/p;->h:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, p0, Lcom/google/android/maps/driveabout/e/p;->i:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/nav/i;-><init>(IIIIZLjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lcom/google/android/maps/driveabout/nav/ah;->a(Lcom/google/android/maps/driveabout/nav/i;)V

    .line 186
    return-void
.end method
