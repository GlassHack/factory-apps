.class final Lcom/google/glass/maps/SchematicSegment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    invoke-direct {v0, p1}, Lcom/google/glass/maps/SchematicSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/SchematicSegment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    .prologue
    .line 59
    new-array v0, p1, [Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/SchematicSegment$1;->newArray(I)[Lcom/google/glass/maps/SchematicSegment;

    move-result-object v0

    return-object v0
.end method
