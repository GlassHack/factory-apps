.class public final Lcom/google/android/maps/driveabout/nav/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/nav/ao;

.field private final b:I

.field private final c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/nav/ao;

.field private h:I

.field private i:I

.field private j:[Lcom/google/android/maps/driveabout/nav/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/b/a;)V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v7, 0x2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->d:F

    .line 169
    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->e:F

    .line 175
    const/16 v1, 0x2710

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->h:I

    .line 176
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->i:I

    .line 186
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->b:I

    .line 187
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v2

    .line 188
    new-array v1, v2, [Lcom/google/android/maps/driveabout/nav/ao;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/nav/h;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    move v1, v0

    .line 189
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    invoke-virtual {p1, v7, v1}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v3

    .line 191
    iget-object v4, p0, Lcom/google/android/maps/driveabout/nav/h;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    new-instance v5, Lcom/google/android/maps/driveabout/nav/ao;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/googlenav/common/io/b/a;Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->i:I

    .line 194
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->c:I

    .line 195
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v1

    .line 196
    new-array v2, v1, [Lcom/google/android/maps/driveabout/nav/b;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/nav/h;->j:[Lcom/google/android/maps/driveabout/nav/b;

    .line 197
    :goto_1
    if-ge v0, v1, :cond_1

    .line 198
    invoke-virtual {p1, v9, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 199
    iget-object v3, p0, Lcom/google/android/maps/driveabout/nav/h;->j:[Lcom/google/android/maps/driveabout/nav/b;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/nav/b;->a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v2

    aput-object v2, v3, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/b/a;->f(I)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/nav/h;->d:F

    .line 204
    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/h;->e:F

    .line 214
    :cond_2
    return-void
.end method

.method public constructor <init>([Lcom/google/android/maps/driveabout/nav/ao;II)V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v0, p0, Lcom/google/android/maps/driveabout/nav/h;->d:F

    .line 169
    iput v0, p0, Lcom/google/android/maps/driveabout/nav/h;->e:F

    .line 175
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/h;->h:I

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/nav/h;->i:I

    .line 180
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/h;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 181
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/h;->b:I

    .line 182
    iput p3, p0, Lcom/google/android/maps/driveabout/nav/h;->c:I

    .line 183
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/nav/f;
    .locals 12

    .prologue
    .line 248
    new-instance v0, Lcom/google/android/maps/driveabout/nav/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/h;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    iget v2, p0, Lcom/google/android/maps/driveabout/nav/h;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/nav/h;->d:F

    iget v4, p0, Lcom/google/android/maps/driveabout/nav/h;->e:F

    iget-boolean v5, p0, Lcom/google/android/maps/driveabout/nav/h;->f:Z

    iget-object v6, p0, Lcom/google/android/maps/driveabout/nav/h;->g:Lcom/google/android/maps/driveabout/nav/ao;

    iget v7, p0, Lcom/google/android/maps/driveabout/nav/h;->h:I

    iget v8, p0, Lcom/google/android/maps/driveabout/nav/h;->i:I

    iget v9, p0, Lcom/google/android/maps/driveabout/nav/h;->c:I

    iget-object v10, p0, Lcom/google/android/maps/driveabout/nav/h;->j:[Lcom/google/android/maps/driveabout/nav/b;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/maps/driveabout/nav/f;-><init>([Lcom/google/android/maps/driveabout/nav/ao;IFFZLcom/google/android/maps/driveabout/nav/ao;III[Lcom/google/android/maps/driveabout/nav/b;Lcom/google/android/maps/driveabout/nav/g;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/maps/driveabout/nav/h;->a:[Lcom/google/android/maps/driveabout/nav/ao;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/nav/f;->a([Lcom/google/android/maps/driveabout/nav/ao;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/nav/f;->a(Lcom/google/android/maps/driveabout/nav/f;I)I

    .line 254
    :cond_0
    return-object v0
.end method

.method public final a(FF)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/h;->d:F

    .line 218
    iput p2, p0, Lcom/google/android/maps/driveabout/nav/h;->e:F

    .line 219
    return-object p0
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/h;->h:I

    .line 234
    return-object p0
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/h;->g:Lcom/google/android/maps/driveabout/nav/ao;

    .line 229
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/nav/h;->f:Z

    .line 224
    return-object p0
.end method

.method public final a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/maps/driveabout/nav/h;->j:[Lcom/google/android/maps/driveabout/nav/b;

    .line 244
    return-object p0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/nav/h;
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/google/android/maps/driveabout/nav/h;->i:I

    .line 239
    return-object p0
.end method
