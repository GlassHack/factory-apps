.class public Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

.field public final b:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/google/android/youtube/core/model/t;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/t;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {}, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;->values()[Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

    .line 188
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->b:Landroid/net/Uri;

    .line 189
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    check-cast p1, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->b:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->b:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->a:Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEventType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VmapAdBreak$TrackingEvent;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    return-void
.end method
