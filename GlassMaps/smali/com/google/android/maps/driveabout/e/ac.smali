.class public final Lcom/google/android/maps/driveabout/e/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/e/aa;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/android/maps/driveabout/model/ab;

.field private final e:Lcom/google/android/maps/driveabout/model/ab;

.field private final f:[Lcom/google/android/maps/driveabout/f/f;

.field private final g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/aa;IILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Lcom/google/android/maps/driveabout/f/f;II)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    .line 155
    iput p2, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    .line 156
    iput p3, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    .line 157
    iput-object p4, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 158
    iput-object p5, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Lcom/google/android/maps/driveabout/model/ab;

    .line 159
    iput-object p6, p0, Lcom/google/android/maps/driveabout/e/ac;->f:[Lcom/google/android/maps/driveabout/f/f;

    .line 160
    iput p7, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 161
    iput p8, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 162
    iget-object v0, p1, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->g:I

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/e/aa;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    .line 108
    iput p3, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v4, v0, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    .line 111
    aget-object v0, v4, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    .line 112
    array-length v1, v4

    move v2, v0

    .line 114
    :goto_0
    if-ge p3, v1, :cond_4

    .line 115
    aget-object v0, v4, p3

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/f/e;->c(I)Lcom/google/android/maps/driveabout/f/f;

    move-result-object v0

    .line 116
    sget-object v5, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/f/f;

    if-eq v0, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    invoke-direct {p0, p1, v2, p3}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/b;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    add-int/lit8 v0, p3, 0x1

    .line 126
    :goto_1
    iput v2, p0, Lcom/google/android/maps/driveabout/e/ac;->g:I

    .line 127
    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    .line 128
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/aa;->a:Lcom/google/android/maps/driveabout/e/d;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 130
    :goto_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Lcom/google/android/maps/driveabout/model/ab;

    .line 131
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/d;->b:Lcom/google/android/maps/driveabout/model/ab;

    .line 133
    :goto_3
    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Lcom/google/android/maps/driveabout/model/ab;

    .line 134
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/f/f;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->f:[Lcom/google/android/maps/driveabout/f/f;

    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->f:[Lcom/google/android/maps/driveabout/f/f;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    const-string v0, "Describer"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Created subPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 123
    :cond_1
    aget-object v0, v4, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    .line 114
    add-int/lit8 p3, p3, 0x1

    move v2, v0

    goto :goto_0

    .line 128
    :cond_2
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    aget-object v0, v4, v0

    .line 130
    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_2

    .line 131
    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    .line 133
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/e;)I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 172
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;Ljava/util/List;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-static {p0, p1}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v4

    .line 261
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 273
    :goto_0
    return v0

    .line 264
    :cond_1
    const/4 v3, 0x0

    .line 266
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/e;

    .line 267
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v2

    .line 268
    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_5

    :cond_2
    move-object v1, v0

    move v0, v2

    :goto_2
    move-object v3, v1

    move v1, v0

    .line 272
    goto :goto_1

    .line 273
    :cond_3
    if-le v4, v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    packed-switch p0, :pswitch_data_0

    .line 586
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 580
    :pswitch_0
    const-string v0, "NORMAL"

    goto :goto_0

    .line 582
    :pswitch_1
    const-string v0, "RAMP"

    goto :goto_0

    .line 584
    :pswitch_2
    const-string v0, "ROUNDABOUT"

    goto :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;I)Ljava/util/List;
    .locals 5

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->c()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 332
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/f/e;->a(I)Lcom/google/android/maps/driveabout/f/a;

    move-result-object v2

    .line 333
    invoke-virtual {v2, p0}, Lcom/google/android/maps/driveabout/f/a;->a(Lcom/google/android/maps/driveabout/f/b;)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v2

    .line 334
    if-eqz v2, :cond_1

    if-eq v2, p2, :cond_1

    .line 335
    invoke-static {p1, v2}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v3

    .line 336
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, p3, :cond_1

    .line 337
    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 348
    if-nez p0, :cond_1

    .line 358
    :cond_0
    return-void

    .line 351
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 352
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/e;

    .line 354
    invoke-static {v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;I)V
    .locals 2

    .prologue
    .line 362
    if-nez p0, :cond_1

    .line 372
    :cond_0
    return-void

    .line 365
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 366
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/e;

    .line 368
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/f/b;II)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    .line 191
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne p3, v2, :cond_0

    .line 192
    const/16 v1, 0x10

    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 193
    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 204
    :goto_0
    return v0

    .line 197
    :cond_0
    aget-object v0, v1, p3

    .line 198
    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 200
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/e/ac;->b(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v0

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-static {p3}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v2

    .line 213
    if-ne v2, v0, :cond_0

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/e/ac;->c(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)V

    .line 217
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/e/ac;->e(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-static {p1}, Lcom/google/android/maps/driveabout/e/ac;->b(Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 288
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 226
    invoke-static {p3}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;)I

    move-result v2

    .line 227
    if-eq v2, v0, :cond_2

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/e/ac;->e(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/e/ac;->d(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v0

    .line 293
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)V
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x2d

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;I)Ljava/util/List;

    move-result-object v0

    .line 242
    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 244
    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    goto :goto_0
.end method

.method private d(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 1

    .prologue
    .line 303
    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    .line 304
    const/16 v0, 0x2d

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;I)Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 307
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    if-eqz v0, :cond_0

    .line 308
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)Z
    .locals 10

    .prologue
    const/16 v9, 0x14

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 382
    invoke-static {p2, p3}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v5

    .line 383
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 394
    invoke-virtual {p2, v3}, Lcom/google/android/maps/driveabout/f/e;->c(I)Lcom/google/android/maps/driveabout/f/f;

    move-result-object v0

    invoke-virtual {p3, v3}, Lcom/google/android/maps/driveabout/f/e;->c(I)Lcom/google/android/maps/driveabout/f/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/f/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v2

    .line 396
    :goto_0
    if-lez v5, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 398
    const/16 v0, 0x2d

    if-gt v6, v0, :cond_6

    .line 399
    add-int/lit8 v0, v6, 0x1e

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/b;Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;I)Ljava/util/List;

    move-result-object v7

    .line 402
    invoke-static {v7}, Lcom/google/android/maps/driveabout/e/ac;->a(Ljava/util/List;)V

    .line 403
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v8

    if-ne v0, v8, :cond_0

    .line 404
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v0

    invoke-static {v7, v0}, Lcom/google/android/maps/driveabout/e/ac;->a(Ljava/util/List;I)V

    .line 408
    :cond_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    if-ge v6, v9, :cond_3

    .line 411
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/e;

    .line 410
    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v6

    .line 412
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/android/maps/driveabout/f/e;->g()I

    move-result v8

    if-ne v0, v8, :cond_3

    if-ge v6, v9, :cond_3

    .line 414
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 415
    invoke-static {p2, p3, v7}, Lcom/google/android/maps/driveabout/e/ac;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    .line 446
    :goto_2
    return v2

    :cond_1
    move v4, v3

    .line 394
    goto :goto_0

    :cond_2
    move v0, v2

    .line 396
    goto :goto_1

    .line 422
    :cond_3
    const/16 v0, 0x1e

    if-lt v5, v0, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v7, :cond_9

    .line 423
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 424
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    goto :goto_2

    .line 427
    :cond_6
    const/16 v0, 0x87

    if-gt v6, v0, :cond_7

    .line 428
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    goto :goto_2

    .line 430
    :cond_7
    const/16 v0, 0xb3

    if-gt v6, v0, :cond_8

    .line 431
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    goto :goto_2

    .line 434
    :cond_8
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 437
    iput v2, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    goto :goto_2

    .line 441
    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/f/e;->c()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 442
    iput v1, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    .line 443
    iput v3, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    goto :goto_2

    :cond_a
    move v2, v3

    .line 446
    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/ai;)D
    .locals 18

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v8, v1, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    .line 484
    const/4 v4, 0x0

    .line 485
    new-instance v9, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 486
    const-wide/16 v2, 0x0

    .line 487
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    move v15, v1

    move-wide/from16 v16, v2

    move-wide/from16 v1, v16

    move-object v3, v4

    move v4, v15

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    if-ge v4, v5, :cond_6

    .line 488
    aget-object v10, v8, v4

    .line 489
    invoke-virtual {v10}, Lcom/google/android/maps/driveabout/f/e;->e()I

    move-result v6

    .line 492
    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/e/aa;->a:Lcom/google/android/maps/driveabout/e/d;

    iget v5, v5, Lcom/google/android/maps/driveabout/e/d;->d:I

    .line 493
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 494
    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v6, v6, Lcom/google/android/maps/driveabout/e/aa;->b:Lcom/google/android/maps/driveabout/e/d;

    iget v6, v6, Lcom/google/android/maps/driveabout/e/d;->d:I

    add-int/lit8 v6, v6, 0x1

    :cond_0
    move v7, v5

    .line 500
    :goto_2
    if-gt v7, v6, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    if-ne v4, v11, :cond_2

    if-ne v7, v5, :cond_2

    .line 502
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/e/ac;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v9, v11}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 508
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 509
    if-eqz v3, :cond_4

    .line 513
    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v11

    float-to-double v11, v11

    .line 514
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v13

    div-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 518
    :goto_4
    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 500
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 492
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 503
    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    add-int/lit8 v11, v11, -0x1

    if-ne v4, v11, :cond_3

    if-ne v7, v6, :cond_3

    .line 504
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/e/ac;->e:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v9, v11}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_3

    .line 506
    :cond_3
    invoke-virtual {v10, v7, v9}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_3

    .line 516
    :cond_4
    new-instance v3, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    goto :goto_4

    .line 487
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 521
    :cond_6
    return-wide v1
.end method

.method public final a()I
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/e/aa;->d:[I

    .line 454
    const/4 v1, 0x0

    .line 455
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    :goto_0
    iget v3, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    if-ge v0, v3, :cond_0

    .line 456
    aget v3, v2, v0

    add-int/2addr v1, v3

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return v1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    return v0
.end method

.method public final d()[Lcom/google/android/maps/driveabout/f/f;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->f:[Lcom/google/android/maps/driveabout/f/f;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/f/e;
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ac;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final h()Lcom/google/android/maps/driveabout/f/e;
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->a:Lcom/google/android/maps/driveabout/e/aa;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/e/aa;->c:[Lcom/google/android/maps/driveabout/f/e;

    iget v1, p0, Lcom/google/android/maps/driveabout/e/ac;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final i()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final j()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v0, "type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ac;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    const-string v0, " side: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ac;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " names: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ac;->f:[Lcom/google/android/maps/driveabout/f/f;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 566
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 570
    const-string v0, " start: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ac;->d:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v0, " end: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/e/ac;->e:Lcom/google/android/maps/driveabout/model/ab;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, " type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/e/ac;->g:I

    invoke-static {v2}, Lcom/google/android/maps/driveabout/e/ac;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
