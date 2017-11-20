.class final Lcom/google/android/location/places/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    .line 294
    return-void
.end method

.method public static a(Lcom/google/android/location/f/bh;)Lcom/google/android/location/places/bh;
    .locals 6

    .prologue
    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/location/f/bh;->a()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 302
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/location/f/bh;->a()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Lcom/google/android/location/f/bh;->a(I)Lcom/google/android/location/f/bb;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    new-instance v0, Lcom/google/android/location/places/bi;

    invoke-direct {v0}, Lcom/google/android/location/places/bi;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/bb;

    .line 312
    iget-wide v4, v0, Lcom/google/android/location/f/bb;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_1
    new-instance v0, Lcom/google/android/location/places/bh;

    invoke-direct {v0, v1}, Lcom/google/android/location/places/bh;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 319
    if-ne p0, p1, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    .line 322
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_2
    check-cast p1, Lcom/google/android/location/places/bh;

    .line 328
    iget-object v0, p0, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/location/places/bh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method
