.class public final Lcom/google/android/location/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/f/av;


# instance fields
.field final a:Lcom/google/android/location/ab;

.field final b:Lcom/google/android/location/os/at;

.field final c:Lcom/google/android/location/v;


# direct methods
.method public constructor <init>(Lcom/google/android/location/v;Lcom/google/android/location/os/at;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/android/location/ab;

    invoke-direct {v0}, Lcom/google/android/location/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/af;->a:Lcom/google/android/location/ab;

    .line 71
    iput-object p2, p0, Lcom/google/android/location/af;->b:Lcom/google/android/location/os/at;

    .line 72
    iput-object p1, p0, Lcom/google/android/location/af;->c:Lcom/google/android/location/v;

    .line 73
    return-void
.end method

.method static a(Ljava/util/TimeZone;Lcom/google/g/a/b/b/a;)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 218
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 219
    if-nez v4, :cond_1

    .line 220
    const/4 v0, -0x1

    .line 244
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    move v2, v1

    .line 224
    :goto_1
    invoke-virtual {p1, v6}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 225
    invoke-virtual {p1, v6, v0}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 226
    invoke-virtual {v5, v6}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    .line 228
    invoke-virtual {v5, v6}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 224
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 238
    :cond_5
    add-int/lit8 v0, v2, 0x1

    .line 239
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v3, Lcom/google/android/location/n/a;->bh:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    .line 240
    invoke-virtual {v2, v6, v4}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    .line 241
    invoke-virtual {v2, v7, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 242
    invoke-virtual {p1, v6, v2}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    .line 243
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "IOHistory"

    const-string v3, "Creating mapping: %s: %d."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b(Lcom/google/g/a/b/b/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 173
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v0

    .line 174
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 177
    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 178
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    invoke-virtual {p0, v2}, Lcom/google/g/a/b/b/a;->j(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)Z
    .locals 1

    .prologue
    .line 289
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
