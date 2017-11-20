.class public final Lcom/google/android/maps/driveabout/model/c;
.super Lcom/google/android/maps/driveabout/model/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/b;-><init>(I)V

    .line 94
    return-void
.end method

.method public static b(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/c;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/maps/driveabout/model/c;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/model/c;-><init>(I)V

    return-object v0
.end method
