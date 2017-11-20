.class final Lcom/google/android/location/places/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/places/b/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/places/b/f;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/location/places/b/f;->d:Z

    .line 240
    new-instance v0, Lcom/google/android/location/places/b/f;

    iget-object v1, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    iget-object v1, v1, Lcom/google/android/location/places/b/f;->e:Lcom/google/android/location/places/b/d;

    iget-object v2, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    iget-object v2, v2, Lcom/google/android/location/places/b/f;->a:Lcom/google/android/location/places/Subscription;

    iget-object v3, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    iget-object v3, v3, Lcom/google/android/location/places/b/f;->b:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v4, p0, Lcom/google/android/location/places/b/g;->a:Lcom/google/android/location/places/b/f;

    iget-wide v4, v4, Lcom/google/android/location/places/b/f;->c:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/places/b/f;-><init>(Lcom/google/android/location/places/b/d;Lcom/google/android/location/places/Subscription;Lcom/google/android/gms/maps/model/LatLngBounds;J)V

    invoke-virtual {v0}, Lcom/google/android/location/places/b/f;->a()V

    .line 245
    return-void
.end method
