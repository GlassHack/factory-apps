.class final Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent$1;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 410
    new-instance v0, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;-><init>(Landroid/os/Parcel;Lcom/google/android/libraries/barhopper/Barcode$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 415
    new-array v0, p1, [Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent$1;->newArray(I)[Lcom/google/android/libraries/barhopper/Barcode$CalendarEvent;

    move-result-object v0

    return-object v0
.end method