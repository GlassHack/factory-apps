.class final Lcom/google/glass/phone/PhoneCall$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/phone/PhoneCall;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/glass/phone/PhoneCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/glass/phone/PhoneCall;-><init>(Landroid/os/Parcel;Lcom/google/glass/phone/PhoneCall$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/phone/PhoneCall;
    .locals 1

    .prologue
    .line 44
    new-array v0, p1, [Lcom/google/glass/phone/PhoneCall;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCall$1;->newArray(I)[Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    return-object v0
.end method
