.class final Lcom/google/android/location/clientlib/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/location/clientlib/NlpLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/clientlib/NlpLocation;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    new-array v0, p1, [Lcom/google/android/location/clientlib/NlpLocation;

    return-object v0
.end method
