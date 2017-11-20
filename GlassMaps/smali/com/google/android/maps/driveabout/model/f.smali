.class public final Lcom/google/android/maps/driveabout/model/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/model/an;

.field private b:I

.field private c:[Lcom/google/android/maps/driveabout/model/ab;

.field private d:Z

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/model/an;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->f:Ljava/util/ArrayList;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/an;)V

    .line 28
    return-void
.end method

.method private a(ILcom/google/android/maps/driveabout/model/ab;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->b:I

    if-ne p1, v0, :cond_0

    .line 120
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 155
    :goto_0
    return-void

    .line 124
    :cond_0
    if-nez p1, :cond_3

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/an;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 132
    :goto_1
    invoke-static {v1, v0, p2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 134
    if-nez p4, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, p1

    .line 135
    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    if-gez v2, :cond_1

    .line 137
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 138
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, p1

    invoke-static {v1, v0, p2, v3, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 140
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, p3, v1}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 142
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 153
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/model/ab;->b(Lcom/google/android/maps/driveabout/model/ab;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    goto :goto_1

    .line 144
    :cond_4
    if-nez p4, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v2, v2, p1

    .line 145
    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 148
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 149
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    aget-object v3, v3, p1

    invoke-static {v1, v0, v3, p2, v2}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 151
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v4}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/model/ab;IZ)V
    .locals 2

    .prologue
    .line 195
    if-eqz p3, :cond_1

    .line 196
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/model/ai;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/model/ai;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/maps/driveabout/model/g;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/model/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ai;

    .line 205
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->f:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/g;

    .line 207
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/model/g;->a(I)V

    .line 209
    :cond_2
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/model/an;)V
    .locals 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/model/f;->b:I

    .line 36
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->b:I

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/google/android/maps/driveabout/model/f;->c:[Lcom/google/android/maps/driveabout/model/ab;

    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/ArrayList;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    .line 166
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    .line 169
    new-instance v2, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v3

    move v1, v0

    .line 171
    :goto_0
    if-ge v1, v3, :cond_0

    .line 172
    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 173
    invoke-direct {p0, v0, v2, v0, v5}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 174
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 175
    invoke-direct {p0, v0, v2, v0, v0}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 171
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 180
    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    if-ge v1, v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ai;

    .line 182
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->c()V

    .line 180
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 187
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ag;Ljava/util/List;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/google/android/maps/driveabout/model/f;->a(Lcom/google/android/maps/driveabout/model/ag;[ILjava/util/List;Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/model/ag;[ILjava/util/List;Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    iput v2, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    .line 66
    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    .line 69
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->a()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/an;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 66
    goto :goto_0

    .line 72
    :cond_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/model/f;->a:Lcom/google/android/maps/driveabout/model/an;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/an;->a(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_3
    new-instance v4, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v5

    .line 83
    invoke-virtual {p1, v2, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    if-eqz v0, :cond_4

    aget v0, p2, v2

    :goto_2
    invoke-direct {p0, v2, v4, v0, v1}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    move v3, v1

    .line 85
    :goto_3
    if-ge v3, v5, :cond_6

    .line 86
    invoke-virtual {p1, v3, v4}, Lcom/google/android/maps/driveabout/model/ag;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 87
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    if-eqz v0, :cond_5

    aget v0, p2, v3

    :goto_4
    invoke-direct {p0, v2, v4, v0, v2}, Lcom/google/android/maps/driveabout/model/f;->a(ILcom/google/android/maps/driveabout/model/ab;IZ)V

    .line 85
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    move v0, v2

    .line 84
    goto :goto_2

    :cond_5
    move v0, v2

    .line 87
    goto :goto_4

    .line 92
    :cond_6
    :goto_5
    iget v0, p0, Lcom/google/android/maps/driveabout/model/f;->g:I

    if-ge v2, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/ai;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->a()I

    move-result v3

    if-le v3, v1, :cond_7

    .line 95
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ai;->c()V

    .line 99
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/model/f;->d:Z

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/model/g;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/g;->c()I

    move-result v3

    if-le v3, v1, :cond_8

    .line 102
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/g;->a()[I

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/g;->b()V

    .line 92
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method
