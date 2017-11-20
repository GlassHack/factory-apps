.class final Lcom/google/android/gms/fitness/settings/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/fitness/settings/ConnectedApp;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/settings/ConnectedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    return-object v4
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    new-array v0, p1, [Lcom/google/android/gms/fitness/settings/ConnectedApp;

    return-object v0
.end method
