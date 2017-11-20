.class final Lcom/google/android/pano/dialog/Action$1;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/dialog/Action;
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
        "Lcom/google/android/pano/dialog/Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/pano/dialog/Action;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    new-instance v0, Lcom/google/android/pano/dialog/Action$Builder;

    invoke-direct {v0}, Lcom/google/android/pano/dialog/Action$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/pano/dialog/Action$Builder;->key(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/pano/dialog/Action$Builder;->title(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/pano/dialog/Action$Builder;->description(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v3

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v3, v0}, Lcom/google/android/pano/dialog/Action$Builder;->intent(Landroid/content/Intent;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/pano/dialog/Action$Builder;->resourcePackageName(Ljava/lang/String;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/pano/dialog/Action$Builder;->drawableResource(I)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v3

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v3, v0}, Lcom/google/android/pano/dialog/Action$Builder;->iconUri(Landroid/net/Uri;)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/pano/dialog/Action$Builder;->checked(Z)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/Action$Builder;->multilineDescription(Z)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/dialog/Action$Builder;->checkSetId(I)Lcom/google/android/pano/dialog/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/dialog/Action$Builder;->build()Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/android/pano/dialog/Action$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/pano/dialog/Action;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 395
    new-array v0, p1, [Lcom/google/android/pano/dialog/Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/android/pano/dialog/Action$1;->newArray(I)[Lcom/google/android/pano/dialog/Action;

    move-result-object v0

    return-object v0
.end method
