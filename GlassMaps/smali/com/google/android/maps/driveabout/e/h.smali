.class public abstract Lcom/google/android/maps/driveabout/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/google/android/maps/driveabout/e/h;->a:Landroid/content/Context;

    .line 357
    iput-object p2, p0, Lcom/google/android/maps/driveabout/e/h;->b:Ljava/util/List;

    .line 358
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public final a(I)Lcom/google/android/maps/driveabout/nav/aj;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/h;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 397
    :goto_0
    return-object v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    .line 393
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->a()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 397
    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/e/h;->b:Ljava/util/List;

    return-object v0
.end method
