.class public final Lcom/google/android/maps/driveabout/e/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/e/aa;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/e/aa;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/ad;->a:Lcom/google/android/maps/driveabout/e/aa;

    .line 53
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/e/ac;)D
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->i()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->j()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v0

    float-to-double v0, v0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/e/ac;->i()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private a(Ljava/util/ListIterator;)V
    .locals 12

    .prologue
    const/4 v7, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 116
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/maps/driveabout/e/ac;

    .line 117
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ac;->b()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 162
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v11

    move v10, v9

    .line 122
    :goto_0
    if-gt v10, v8, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/maps/driveabout/e/ac;

    .line 124
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ac;->h()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    .line 125
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ac;->h()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/e/b;->a(Lcom/google/android/maps/driveabout/f/e;Lcom/google/android/maps/driveabout/f/e;)I

    move-result v0

    int-to-float v0, v0

    .line 130
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43250000    # 165.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 131
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ac;->h()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/f/e;->c(I)Lcom/google/android/maps/driveabout/f/f;

    move-result-object v0

    .line 132
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ac;->g()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/maps/driveabout/f/e;->c(I)Lcom/google/android/maps/driveabout/f/f;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/e/ac;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ad;->a:Lcom/google/android/maps/driveabout/e/aa;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ac;->f()I

    move-result v2

    .line 137
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ac;->f()I

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/e/ac;->j()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 138
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ac;->j()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/e/ac;->d()[Lcom/google/android/maps/driveabout/f/f;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/e/aa;IILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Lcom/google/android/maps/driveabout/f/f;II)V

    move v1, v9

    .line 140
    :goto_1
    if-gt v1, v10, :cond_3

    .line 141
    if-eqz v1, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_3
    const-string v1, "Describer"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Created u-turn maneuver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 158
    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    move v0, v9

    .line 159
    :goto_2
    sub-int v2, v1, v11

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 160
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 153
    :cond_5
    invoke-static {v6}, Lcom/google/android/maps/driveabout/e/ad;->a(Lcom/google/android/maps/driveabout/e/ac;)D

    move-result-wide v0

    const-wide v2, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_4

    .line 122
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0
.end method

.method private b(Ljava/util/LinkedList;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/e/ad;->a(Ljava/util/ListIterator;)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method private c(Ljava/util/LinkedList;)V
    .locals 11

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 80
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/e/ac;

    :goto_0
    move-object v9, v0

    .line 84
    :goto_1
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/maps/driveabout/e/ac;

    .line 86
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->a()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_3

    .line 93
    new-instance v0, Lcom/google/android/maps/driveabout/e/ac;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/e/ad;->a:Lcom/google/android/maps/driveabout/e/aa;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->e()I

    move-result v2

    .line 94
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ac;->f()I

    move-result v3

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/e/ac;->i()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    .line 95
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ac;->j()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ac;->d()[Lcom/google/android/maps/driveabout/f/f;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ac;->b()I

    move-result v7

    .line 96
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/e/ac;->c()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/e/ac;-><init>(Lcom/google/android/maps/driveabout/e/aa;IILcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;[Lcom/google/android/maps/driveabout/f/f;II)V

    .line 97
    const-string v1, "Describer"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Dropping short sub-path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 101
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 102
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    .line 103
    invoke-interface {v10, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    :goto_2
    move-object v9, v0

    .line 107
    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    return-void

    :cond_3
    move-object v0, v8

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/ad;->b(Ljava/util/LinkedList;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/e/ad;->c(Ljava/util/LinkedList;)V

    .line 63
    return-void
.end method
