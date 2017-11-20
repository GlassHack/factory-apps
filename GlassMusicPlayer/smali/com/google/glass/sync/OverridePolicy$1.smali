.class final Lcom/google/glass/sync/OverridePolicy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/sync/OverridePolicy;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/sync/OverridePolicy;->values()[Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/OverridePolicy$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/sync/OverridePolicy;
    .locals 1

    .prologue
    .line 38
    new-array v0, p1, [Lcom/google/glass/sync/OverridePolicy;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/glass/sync/OverridePolicy$1;->newArray(I)[Lcom/google/glass/sync/OverridePolicy;

    move-result-object v0

    return-object v0
.end method
