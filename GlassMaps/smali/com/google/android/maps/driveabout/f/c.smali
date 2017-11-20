.class public final Lcom/google/android/maps/driveabout/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:Lcom/google/android/maps/driveabout/f/d;

.field c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->c:Ljava/util/Iterator;

    .line 271
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/c;->b()V

    .line 272
    return-void
.end method

.method private a()Lcom/google/android/maps/driveabout/f/e;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    iget v1, p0, Lcom/google/android/maps/driveabout/f/c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/f/c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/f/d;->a(I)Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    .line 282
    iget v1, p0, Lcom/google/android/maps/driveabout/f/c;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/f/d;->d()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/c;->b()V

    .line 285
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/f/d;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    .line 292
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/f/d;->d()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/c;->a:I

    .line 300
    return-void

    .line 297
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/f/c;->a:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/f/c;->b:Lcom/google/android/maps/driveabout/f/d;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/f/d;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/f/c;->a()Lcom/google/android/maps/driveabout/f/e;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
