.class public final Lcom/google/android/location/places/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a;->a:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/location/places/d/a;->b:Ljava/util/List;

    .line 29
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/location/places/d/a;->c:Ljava/util/List;

    .line 30
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/location/places/d/a;->d:Ljava/util/List;

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/location/places/d/a;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;
    .locals 3

    .prologue
    .line 35
    iget-object v0, p1, Lcom/google/android/location/places/d/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/location/places/d/a;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/location/places/d/a;->d:Ljava/util/List;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    move-result-object v0

    return-object v0
.end method
