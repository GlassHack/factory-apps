.class final Lcom/google/glass/io/FileType$1;
.super Ljava/lang/Object;
.source "FileType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/io/FileType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/io/FileType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/io/FileType;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/io/FileType;->valueOf(Ljava/lang/String;)Lcom/google/glass/io/FileType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/glass/io/FileType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/io/FileType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/io/FileType;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/google/glass/io/FileType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/glass/io/FileType$1;->newArray(I)[Lcom/google/glass/io/FileType;

    move-result-object v0

    return-object v0
.end method
