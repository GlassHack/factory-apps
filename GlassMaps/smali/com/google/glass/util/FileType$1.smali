.class final Lcom/google/glass/util/FileType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/FileType;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/util/FileType;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/FileType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/util/FileType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/util/FileType;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/util/FileType;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lcom/google/glass/util/FileType;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/glass/util/FileType$1;->newArray(I)[Lcom/google/glass/util/FileType;

    move-result-object v0

    return-object v0
.end method
