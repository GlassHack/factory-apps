.class final Lcom/google/glass/maps/directions/TransitAgencyInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/maps/directions/TransitAgencyInfo;
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/google/glass/maps/directions/TransitAgencyInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/directions/TransitAgencyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/directions/TransitAgencyInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/maps/directions/TransitAgencyInfo;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/maps/directions/TransitAgencyInfo;
    .locals 1

    .prologue
    .line 51
    new-array v0, p1, [Lcom/google/glass/maps/directions/TransitAgencyInfo;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/directions/TransitAgencyInfo$1;->newArray(I)[Lcom/google/glass/maps/directions/TransitAgencyInfo;

    move-result-object v0

    return-object v0
.end method
