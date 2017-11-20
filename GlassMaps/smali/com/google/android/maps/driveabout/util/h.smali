.class public final Lcom/google/android/maps/driveabout/util/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/util/j;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/util/j;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 316
    return-void
.end method

.method private a()Lcom/google/android/maps/driveabout/util/i;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Lcom/google/android/maps/driveabout/util/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/util/j;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/util/j;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/util/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/util/j;->b:Lcom/google/android/maps/driveabout/util/j;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    .line 326
    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/util/h;->a:Lcom/google/android/maps/driveabout/util/j;

    if-eqz v0, :cond_0

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
    .line 311
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/util/h;->a()Lcom/google/android/maps/driveabout/util/i;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
