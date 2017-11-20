.class public final Lcom/google/android/gms/location/places/PlaceRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Hy:Lcom/google/android/gms/location/places/PlaceFilter;

.field private Hz:J

.field private mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    sget-wide v0, Lcom/google/android/gms/location/places/PlaceRequest;->Hx:J

    iput-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hz:J

    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->mPriority:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/PlaceRequest;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hz:J

    invoke-static {v0, v1}, Lcom/google/android/gms/location/places/PlaceRequest;->h(J)V

    iget v0, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->mPriority:I

    invoke-static {v0}, Lcom/google/android/gms/location/places/PlaceRequest;->cO(I)V

    new-instance v0, Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-wide v2, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hz:J

    iget v4, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->mPriority:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;JILcom/google/android/gms/location/places/PlaceRequest$1;)V

    return-object v0
.end method

.method public setFilter(Lcom/google/android/gms/location/places/PlaceFilter;)Lcom/google/android/gms/location/places/PlaceRequest$Builder;
    .locals 0
    .param p1, "filter"    # Lcom/google/android/gms/location/places/PlaceFilter;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hy:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object p0
.end method

.method public setInterval(J)Lcom/google/android/gms/location/places/PlaceRequest$Builder;
    .locals 0
    .param p1, "millis"    # J

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->Hz:J

    return-object p0
.end method

.method public setPriority(I)Lcom/google/android/gms/location/places/PlaceRequest$Builder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/places/PlaceRequest$Builder;->mPriority:I

    return-object p0
.end method
