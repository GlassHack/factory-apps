.class public final Lcom/google/android/location/activity/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/location/activity/a/a/a;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/location/activity/a/a/d;)Ljava/util/List;
    .locals 5

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/google/android/location/activity/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0xf

    .line 53
    invoke-static {}, Lcom/google/android/location/activity/a/t;->values()[Lcom/google/android/location/activity/a/t;

    move-result-object v1

    const/16 v3, 0xb

    aget-object v3, v1, v3

    .line 54
    iget-object v1, p0, Lcom/google/android/location/activity/a/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/activity/a/a/o;

    .line 55
    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/a/a/o;->a(Lcom/google/android/location/activity/a/a/d;)Lcom/google/android/location/activity/a/s;

    move-result-object v0

    .line 56
    iget v0, v0, Lcom/google/android/location/activity/a/s;->b:I

    add-int/2addr v0, v1

    move v1, v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    mul-int/lit8 v0, v1, 0x64

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v2, Lcom/google/android/location/activity/a/s;

    invoke-direct {v2, v3, v0}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v1
.end method
