.class public final Lcom/google/android/maps/driveabout/a/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/a/a;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/a/a;

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lcom/google/android/maps/driveabout/a/ai;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/maps/driveabout/a/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/a/a;

    invoke-direct {v1, v0}, Lcom/google/android/maps/driveabout/a/ai;-><init>([Lcom/google/android/maps/driveabout/a/a;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/maps/driveabout/a/a;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    return-void
.end method
