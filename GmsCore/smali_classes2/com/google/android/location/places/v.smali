.class public final Lcom/google/android/location/places/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/google/android/location/places/v;->b:F

    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    if-ne p0, p1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    instance-of v2, p1, Lcom/google/android/location/places/v;

    if-nez v2, :cond_2

    move v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_2
    check-cast p1, Lcom/google/android/location/places/v;

    .line 33
    iget-object v2, p0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/location/places/v;->b:F

    iget v3, p1, Lcom/google/android/location/places/v;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/location/places/v;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/location/places/v;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
