.class public final Lcom/google/android/gms/location/places/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Collection;

.field public b:Z

.field public c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Collection;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    .line 44
    iput-object v1, p0, Lcom/google/android/gms/location/places/i;->d:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/i;->b:Z

    .line 46
    iput-object v1, p0, Lcom/google/android/gms/location/places/i;->e:Ljava/util/Collection;

    .line 47
    iput-object v1, p0, Lcom/google/android/gms/location/places/i;->c:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/location/places/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/places/i;->a:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/location/places/i;->e:Ljava/util/Collection;

    if-eqz v2, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/places/i;->e:Ljava/util/Collection;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/location/places/i;->c:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/location/places/i;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 180
    :goto_2
    new-instance v0, Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v2, p0, Lcom/google/android/gms/location/places/i;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/location/places/i;->b:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;B)V

    return-object v0

    :cond_0
    move-object v1, v0

    .line 172
    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 175
    goto :goto_1

    :cond_2
    move-object v5, v0

    .line 178
    goto :goto_2
.end method
