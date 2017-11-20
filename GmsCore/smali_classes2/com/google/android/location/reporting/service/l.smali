.class final Lcom/google/android/location/reporting/service/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;->a(Landroid/os/Parcel;)Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    new-array v0, p1, [Lcom/google/android/location/reporting/service/IdentifiedUploadRequest;

    return-object v0
.end method
