.class public final Lcom/google/android/gms/location/places/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/location/places/PlaceFilter;

.field public b:J

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/o;->a:Lcom/google/android/gms/location/places/PlaceFilter;

    .line 69
    sget-wide v0, Lcom/google/android/gms/location/places/PlaceRequest;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/location/places/o;->b:J

    .line 70
    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/places/o;->c:I

    return-void
.end method
