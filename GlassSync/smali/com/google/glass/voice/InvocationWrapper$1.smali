.class final Lcom/google/glass/voice/InvocationWrapper$1;
.super Ljava/lang/Object;
.source "InvocationWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/InvocationWrapper;
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
        "Lcom/google/glass/voice/InvocationWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/InvocationWrapper;
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/glass/util/ParcelUtils;->readParcelableFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 80
    .local v2, "voiceTrigger":Lcom/google/android/glass/app/VoiceTrigger;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/glass/entity/EntityUtils;->fromProtoByteArray([B)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 83
    .local v1, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, "commandType":I
    new-instance v4, Lcom/google/glass/voice/InvocationWrapper;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/google/glass/voice/InvocationWrapper;-><init>(Lcom/google/android/glass/app/VoiceTrigger;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/InvocationWrapper$1;)V

    return-object v4

    .end local v0    # "commandType":I
    .end local v1    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    move-object v1, v3

    .line 81
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/InvocationWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/voice/InvocationWrapper;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 89
    new-array v0, p1, [Lcom/google/glass/voice/InvocationWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/InvocationWrapper$1;->newArray(I)[Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v0

    return-object v0
.end method
