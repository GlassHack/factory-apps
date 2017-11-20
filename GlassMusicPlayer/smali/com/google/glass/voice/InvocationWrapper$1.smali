.class final Lcom/google/glass/voice/InvocationWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/InvocationWrapper;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTrigger;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    new-instance v4, Lcom/google/glass/voice/InvocationWrapper;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/glass/voice/InvocationWrapper;-><init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/InvocationWrapper$1;)V

    return-object v4

    :cond_0
    move-object v1, v2

    .line 81
    goto :goto_0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/InvocationWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/voice/InvocationWrapper;
    .locals 1

    .prologue
    .line 89
    new-array v0, p1, [Lcom/google/glass/voice/InvocationWrapper;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/InvocationWrapper$1;->newArray(I)[Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v0

    return-object v0
.end method
