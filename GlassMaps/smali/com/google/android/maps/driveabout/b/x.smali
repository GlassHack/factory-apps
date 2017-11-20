.class public final Lcom/google/android/maps/driveabout/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/ax;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/model/ax;

.field private static final b:Lcom/google/android/maps/driveabout/model/ax;


# instance fields
.field private volatile c:I

.field private volatile d:Z

.field private e:Lcom/google/android/maps/driveabout/nav/w;

.field private f:Lcom/google/android/maps/driveabout/model/ag;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/google/android/maps/driveabout/model/ax;

.field private final k:Lcom/google/android/maps/driveabout/util/g;

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    .line 37
    new-instance v0, Lcom/google/android/maps/driveabout/b/y;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/y;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/b/x;->d:Z

    .line 54
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 65
    new-instance v0, Lcom/google/android/maps/driveabout/util/g;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/util/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    .line 73
    return-void
.end method

.method private static a(ILcom/google/android/maps/driveabout/model/ab;)I
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v0

    .line 236
    int-to-double v2, p0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/model/ab;)I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/b/x;->a(ILcom/google/android/maps/driveabout/model/ab;)I

    move-result v0

    return v0
.end method

.method private b(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v3

    if-lt v2, v3, :cond_1

    move v0, v1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget v2, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    if-eq p1, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    .line 188
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/l;->t()I

    move-result v3

    .line 189
    mul-int/lit16 v3, v3, 0x3e8

    invoke-static {v3, v2}, Lcom/google/android/maps/driveabout/b/x;->a(ILcom/google/android/maps/driveabout/model/ab;)I

    move-result v2

    .line 190
    iget-object v3, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iget v6, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    .line 191
    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/nav/w;->b(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 192
    int-to-double v5, v2

    cmpg-double v2, v3, v5

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 158
    :goto_0
    return-void

    .line 139
    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/w;->h()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/nav/w;->a(I)Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v1

    .line 143
    invoke-static {v0, v4, v1}, Lcom/google/android/maps/driveabout/b/s;->a(Lcom/google/android/maps/driveabout/model/ab;II)Lcom/google/android/maps/driveabout/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 145
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->l:I

    goto :goto_0

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/x;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    iget v2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/ag;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/google/android/maps/driveabout/b/s;

    .line 152
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/b/x;->a(Lcom/google/android/maps/driveabout/model/ab;)I

    move-result v3

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/google/android/maps/driveabout/b/s;-><init>(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 153
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->m:I

    goto :goto_0

    .line 156
    :cond_2
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/aw;
    .locals 3

    .prologue
    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    if-eq v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/model/ax;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/x;->c()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/util/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/util/g;->insert(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->c:I

    .line 210
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ah;I)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ah;->i()I

    move-result v0

    .line 116
    iget v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    if-gt v1, v0, :cond_1

    .line 118
    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 119
    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    .line 120
    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    .line 131
    :cond_0
    :goto_0
    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    .line 132
    return-void

    .line 121
    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    if-gt v0, p2, :cond_2

    .line 123
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 124
    iput p2, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    sget-object v1, Lcom/google/android/maps/driveabout/b/x;->a:Lcom/google/android/maps/driveabout/model/ax;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    if-ge v0, p2, :cond_0

    .line 129
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/w;->k()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 95
    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    .line 96
    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    .line 97
    iput v1, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    .line 98
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 99
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->f:Lcom/google/android/maps/driveabout/model/ag;

    .line 81
    iput-object v1, p0, Lcom/google/android/maps/driveabout/b/x;->e:Lcom/google/android/maps/driveabout/nav/w;

    .line 82
    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->g:I

    .line 83
    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->h:I

    .line 84
    iput v0, p0, Lcom/google/android/maps/driveabout/b/x;->i:I

    .line 85
    sget-object v0, Lcom/google/android/maps/driveabout/b/x;->b:Lcom/google/android/maps/driveabout/model/ax;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->j:Lcom/google/android/maps/driveabout/model/ax;

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/x;->k:Lcom/google/android/maps/driveabout/util/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/g;->clear()V

    .line 88
    return-void
.end method
